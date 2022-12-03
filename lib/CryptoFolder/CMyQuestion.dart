import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:studenx_oigev2/CryptoFolder/krupto.dart';
import 'CQuiz.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';
class CMyQuestion extends StatefulWidget {
  const CMyQuestion({Key? key}) : super(key: key);

  @override
  State<CMyQuestion> createState() => _CMyQuestionState();
}

class _CMyQuestionState extends State<CMyQuestion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: QuestionWidget(
        ),
      ),
    );
  }
}

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({Key? key}) : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  late PageController _controller;
  int _questionNumber = 1;
  int _score = 0;
  bool _isLocked = false;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffFF5F6D),
            Color(0xffFF5F6D),
            Color(0xffFFC371),
          ],
        ),
      ),
      child: Stack(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white12,
                    Colors.white12,
                  ],
                ),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 32,
                  child: ColoredBox(color: Colors.white),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        PageTransition(
                          child: Crypto(),
                          type: PageTransitionType.fade,
                          alignment: Alignment.center,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          color: Colors.transparent,
                          height: 50,
                          width: 60,
                          child: Icon(
                            Icons.subdirectory_arrow_left,
                            color:  Colors.white,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Text("Küsimus $_questionNumber/${questions.length}",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 42.1,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(thickness: 3, color: Colors.white),
                Expanded(child: PageView.builder(
                  itemCount: questions.length,
                  controller: _controller,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final _question = questions[index];
                    return buildQuestion(_question);
                  },
                ),
                ),
                _isLocked ? buildElevatedButton() : const SizedBox.shrink(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Column buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Text(
            question.text,style: GoogleFonts.bebasNeue(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        )
        ),
        const SizedBox(height: 32),
        Expanded(
          child: OptionsWidget(
            question: question,
            onClickedOption: (option) {
              if (question.isLocked) {
                return;
              } else {
                setState(() {
                  question.isLocked = true;
                  question.selectedOption = option;
                });
                _isLocked = question.isLocked;
                if (question.selectedOption!.isCorrect) {
                  _score++;
                }
              }
            },
          ),
        ),
      ],
    );
  }
  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
      onPressed: () {
        if (_questionNumber < questions.length) {
          _controller.nextPage(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInExpo,
          );
          setState(() {
            _questionNumber++;
            _isLocked = false;
          });
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(score: _score),
            ),
          );
        }
      },
      child: Text(
        _questionNumber < questions.length ? "Järgmine" : "Näita tulemust",
        style: GoogleFonts.prompt(
            fontSize: 17,
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget({Key? key,
    required this.question,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Column(
      children: question.options
          .map((option) => buildOption(context, option))
          .toList(),
    ),
  );
  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);
    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        height: 88,
        width: 380,
        padding: EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffFF5F6D),
            Color(0xffFFC371),
          ],),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color, width: 6),
        ),
        child: Wrap(
          children: [
            Text(option.text,
                style: GoogleFonts.bebasNeue(
                  fontSize: 30,
                  color: Colors.white,
                  letterSpacing: 2,
                )
            ),
          ],
        ),
      ),
    );
  }
  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect ? Colors.green : Colors.red;
      } else if (option.isCorrect) {
        return Colors.green;
      }
    }
    return Colors.white12;
  }
  Widget getIconForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect
            ? const Icon(Icons.check_circle, color: Colors.green)
            : const Icon(Icons.cancel, color: Colors.red);
      } else if (option.isCorrect) {
        return const Icon(Icons.check_circle, color: Colors.green);
      }
    }
    return const SizedBox.shrink();
  }
}

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.score}) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF5F6D),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              Lottie.network("https://assets3.lottiefiles.com/packages/lf20_xldzoar8.json"),
              Text("Sa said $score/${questions.length}",
                style: GoogleFonts.bebasNeue(
                  fontSize: 80,
                  color: Colors.white,
                ),
              ),
              Text("       Jätka samamoodi, ja oled\nkunagi väga edukas investeerija",
                style: GoogleFonts.sansita(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 127, right: 130),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    PageTransition(
                      child: Crypto(),
                      type: PageTransitionType.fade,
                      alignment: Alignment.center,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.yellow.shade600,
                            Colors.yellow.shade300,
                          ])
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.subdirectory_arrow_left,
                            color: Colors.white,
                            size: 40,
                          ),
                          Text("Tagasi",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}