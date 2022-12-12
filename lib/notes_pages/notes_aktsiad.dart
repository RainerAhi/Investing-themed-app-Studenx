import 'package:flutter/material.dart';
import 'package:studenx_oigev2/AktsiadFolder/google_sheets_api.dart';
import 'package:studenx_oigev2/notes_pages/loading_circle.dart';
import 'package:studenx_oigev2/notes_pages/notes_grid.dart';
import 'dart:async';
class NotesAktsiad extends StatefulWidget {
  const NotesAktsiad({Key? key}) : super(key: key);

  @override
  State<NotesAktsiad> createState() => _NotesAktsiadState();
}

class _NotesAktsiadState extends State<NotesAktsiad> {

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
          color: Colors.transparent,
          height: 90,
          child: GoogleSheetsApi.loading == true
              ? loading_circle()
              : notes_grid(),
        ),
      ],
    );
  }
}
