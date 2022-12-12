import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class notes_textbox extends StatelessWidget {

  late final String text;

  notes_textbox({required this.text});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xffFFC371),
                Color(0xffFFC371),
              ],
            ),
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                child: Text(text, style: GoogleFonts.bebasNeue(
                  color: Colors.white,
                  fontSize: 31.0,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}