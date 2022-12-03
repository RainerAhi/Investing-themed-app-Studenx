import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studenx_oigev2/notes_pages/notes_grid_aktsiad.dart';
import 'package:studenx_oigev2/AktsiadFolder/google_sheets_api.dart';
import 'package:studenx_oigev2/notes_pages/loading_circle.dart';
import 'package:studenx_oigev2/notes_pages/notes_button.dart';
import 'package:studenx_oigev2/notes_pages/notes_grid.dart';
import 'package:studenx_oigev2/notes_pages/notes_textbox.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import '';
class notes extends StatefulWidget {
  const notes({Key? key}) : super(key: key);

  @override
  State<notes> createState() => _notesState();
}

class _notesState extends State<notes> {

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => setState(() {}));
  }

  void _post() {
    GoogleSheetsApi.insert(_controller.text);
    _controller.clear();
    setState(() {});
  }

  void startLoading() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (GoogleSheetsApi.loading == false) {
        setState(() {
          timer.cancel();
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {

    if (GoogleSheetsApi.loading == true) {
      startLoading();
    }
    return Stack(
      children: [
        Container(
          color: Colors.white,
          width: 500,
          child: GoogleSheetsApi.loading == true
              ? loading_circle()
              : notes_grid_aktsiad(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 35),
        ),
      ],
    );
  }
}