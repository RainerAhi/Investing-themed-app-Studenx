import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TeadmisedAni extends StatefulWidget {
  const TeadmisedAni({Key? key}) : super(key: key);

  @override
  State<TeadmisedAni> createState() => _TeadmisedAniState();
}

class _TeadmisedAniState extends State<TeadmisedAni> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return Lottie.network("https://assets9.lottiefiles.com/packages/lf20_DMgKk1.json",
      height: 150,
    );
  }
}