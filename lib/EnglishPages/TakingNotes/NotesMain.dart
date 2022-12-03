import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:studenx_oigev2/EnglishPages/Home.dart';
import 'package:studenx_oigev2/ToDo/data/database.dart';
import 'package:studenx_oigev2/ToDo/dialog_box.dart';
import 'package:studenx_oigev2/ToDo/todo_tile.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studenx_oigev2/pages/Kodu.dart';

class NotesMain extends StatefulWidget {
  const NotesMain ({Key? key}) : super(key: key);

  @override
  State<NotesMain > createState() => _NotesMainState();
}

class _NotesMainState extends State<NotesMain > {

  final _myBox = Hive.box('mybox');
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    // if this is the 1st time ever openin the app, then create default data
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      // there already exists data
      db.loadData();
    }

    super.initState();
  }


  final _controller = TextEditingController();

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  void saveNewTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
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
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          elevation: 0,
          toolbarHeight: 70,
          iconTheme: IconThemeData(color: Colors.white),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("take notes",
                style: GoogleFonts.bebasNeue(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              Icon(Icons.edit_note_sharp, size: 70,),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffFF5F6D),
          elevation: 0,
          onPressed: createNewTask,
          child: Icon(Icons.add, color: Colors.white, size: 50,),
        ),
        body: ListView.builder(
          padding: EdgeInsets.only(left: 10),
          itemCount: db.toDoList.length,
          itemBuilder: (context, index) {
            return Wrap(
              children: [
                ToDoTile(
                  taskName: db.toDoList[index][0],
                  taskCompleted: db.toDoList[index][1],
                  onChanged: (value) => checkBoxChanged(value, index),
                  deleteFunction: (context) => deleteTask(index),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}