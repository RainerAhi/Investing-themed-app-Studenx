import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studenx_oigev2/AktsiadFolder/Aktsiad.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/Stocks.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Cnbc1 extends StatefulWidget {
  const Cnbc1({Key? key}) : super(key: key);

  @override
  State<Cnbc1> createState() => _Cnbc1State();
}

class _Cnbc1State extends State<Cnbc1> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color(0xffFFC371),
        leading: IconButton(
          onPressed: () => Navigator.of(context).push(
            PageTransition(
              child: Aktsiad(),
              type: PageTransitionType.fade,
              alignment: Alignment.center,
            ),
          ),
          icon: Icon(Icons.arrow_back_ios),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text("CNBC",
          style: GoogleFonts.bebasNeue(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "https://www.cnbc.com/world/?region=world",
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
          onPageStarted: (url) {
            print("New website: $url");

            if(url.contains("https://www.cnbc.com/world/?region=world")) {
              Future.delayed(Duration(milliseconds: 300), () {
                controller.runJavascriptReturningResult(
                    "document.getElementsByTagName('header')[0].style.display='none'");
              });
            }
          },
        ),
      ),
    );
  }
}