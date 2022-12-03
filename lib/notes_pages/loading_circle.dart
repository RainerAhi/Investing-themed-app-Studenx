import 'package:flutter/material.dart';

class loading_circle extends StatelessWidget {
  const loading_circle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 45,
        width: 45,
        child: CircularProgressIndicator(),
      ),
    );
  }
}