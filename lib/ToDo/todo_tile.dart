import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoTile extends StatelessWidget {


  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;


  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.white12,
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white12, width: 4),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white12,
                        Colors.white12,
                      ]),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 3, left: 8),
                      child: Text(
                        taskName,
                        style: GoogleFonts.alata(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}