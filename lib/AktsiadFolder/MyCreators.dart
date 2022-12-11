import 'package:flutter/material.dart';

import 'package:expansion_widget/expansion_widget.dart';
import 'dart:math' as math;
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCreators extends StatefulWidget {
  const MyCreators({Key? key}) : super(key: key);

  @override
  State<MyCreators> createState() => _MyCreatorsState();
}

class _MyCreatorsState extends State<MyCreators> {

  Future<void> _launchURL(String url) async {
    final  uri = Uri.parse(url);
    if(!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  List<Car> cars = [
    Car(1, "CREATORS", "THIS IS TEXT",false),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
              child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    cars[panelIndex].isExpanded = !isExpanded;
                  });
                },
                children: cars.map((car) {
                  return ExpansionPanel(
                      backgroundColor: Color(0xffFF5F6D),
                      canTapOnHeader: true,
                      isExpanded: car.isExpanded,
                      headerBuilder: (bc, status ) {
                        return Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: GestureDetector(
                                  onTap: () {
                                    _launchURL("https://www.youtube.com/c/AndreiJikh");
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Container(
                                      height: 77,
                                      width: 77,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color(0xff89CFFF),
                                            Color(0xffdf98fa),
                                          ],)
                                      ),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage("assets/images/andreijikh.jpg"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: GestureDetector(
                                  onTap: () {
                                    _launchURL("https://www.youtube.com/@josephhogue");
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Container(
                                      height: 77,
                                      width: 77,
                                      color: Color(0xffFFC371),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage("assets/images/josephhogue.jpg"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: GestureDetector(
                                  onTap: () {
                                    _launchURL("https://www.youtube.com/@humphrey");
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Container(
                                      height: 77,
                                      width: 77,
                                      color: Color(0xff5ce1e6),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage("assets/images/humphrey.jpg"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }, body: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0, bottom: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: GestureDetector(
                            onTap: () {
                              _launchURL("https://www.youtube.com/@GrahamStephan");
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 77,
                                width: 77,
                                color: Color(0xfffbd072),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/grahamstephan.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: GestureDetector(
                            onTap: () {
                              _launchURL("https://www.youtube.com/@DanielPronk");
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 77,
                                width: 77,
                                color: Color(0xfffbd072),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/danielpronk.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 10, right: 50),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: GestureDetector(
                            onTap: () {
                              _launchURL("https://www.youtube.com/@MeetKevin");
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 77,
                                width: 77,
                                color: Color(0xfffbd072),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/meetkevin.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0, bottom: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: GestureDetector(
                            onTap: () {
                              _launchURL("https://www.youtube.com/@HeresyFinancial");
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 77,
                                width: 77,
                                color: Color(0xfffbd072),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/heresyfinancial.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: GestureDetector(
                            onTap: () {
                              _launchURL("https://www.youtube.com/@marktilbury");
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 77,
                                width: 77,
                                color: Color(0xfffbd072),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/marktilbury.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: GestureDetector(
                            onTap: () {
                              _launchURL("https://www.youtube.com/@JosephCarlsonShow");
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 77,
                                width: 77,
                                color: Color(0xfffbd072),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/josephcarlson.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ));
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Car{
  int id;

  String name;
  String description;
  bool isExpanded;

  Car(this.id, this.name, this.description, this.isExpanded);
}