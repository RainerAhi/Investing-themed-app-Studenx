import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class MySocials extends StatefulWidget {
  const MySocials({Key? key}) : super(key: key);

  @override
  State<MySocials> createState() => _MySocialsState();
}

class _MySocialsState extends State<MySocials> {

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
      child: Padding(
        padding: const EdgeInsets.only(left: 0, top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: GestureDetector(
                      onTap: () {
                        _launchURL("https://www.instagram.com/studenxfinance/");
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xffffffff),
                                Color(0xffffffff),
                              ],)
                          ),
                          child: Image.asset("assets/images/iglogo.png"),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL("https://www.tiktok.com/@studenxcontent");
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0xffffffff),
                                  Color(0xffffffff),
                                ],)
                            ),
                            child: Image.asset("assets/images/tiktok.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text("studenxfinance@gmail.com",
              style: GoogleFonts.bebasNeue(
                color: Colors.white,
                fontSize: 25,
                letterSpacing: 2,
              ),
            )
          ],
        ),
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