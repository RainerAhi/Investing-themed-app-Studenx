import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class notes_button extends StatelessWidget {
  late final text;
  late final function;

  notes_button({this.text, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(10),
            color: Color(0xffdf98fa),
            child: Text(
              text,
              style: GoogleFonts.prompt(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
