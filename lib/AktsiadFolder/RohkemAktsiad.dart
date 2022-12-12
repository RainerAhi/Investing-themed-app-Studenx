import 'package:flutter/material.dart';
import 'package:studenx_oigev2/AktsiadFolder/Aktsiad.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class RohkemAktsiad extends StatefulWidget {
  const RohkemAktsiad({Key? key}) : super(key: key);

  @override
  State<RohkemAktsiad> createState() => _RohkemAktsiadState();
}

class _RohkemAktsiadState extends State<RohkemAktsiad> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color(0xffFF5F6D),
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
        title: Text("aktsiate hinnad",
          style: GoogleFonts.bebasNeue(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "https://companiesmarketcap.com/",
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
          onPageStarted: (url) {
            print("New website: $url");

            if(url.contains("https://companiesmarketcap.com/")) {
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