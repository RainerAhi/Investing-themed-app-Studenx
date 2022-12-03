import 'package:flutter/material.dart';
import 'notes_textbox.dart';
import '../AktsiadFolder/google_sheets_api.dart';

class notes_grid_aktsiad extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: GoogleSheetsApi.currentNotes.length,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          return notes_textbox(text: GoogleSheetsApi.currentNotes[index]);
        });
  }
}