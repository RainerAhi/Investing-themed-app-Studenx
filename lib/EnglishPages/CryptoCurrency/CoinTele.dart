import 'package:flutter/material.dart';
import 'package:studenx_oigev2/EnglishPages/CryptoCurrency/CryptoCurrency.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class CoinTele extends StatefulWidget {
  const CoinTele({Key? key}) : super(key: key);

  @override
  State<CoinTele> createState() => _CoinTeleState();
}

class _CoinTeleState extends State<CoinTele> {
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
              child: CryptoCurrency(),
              type: PageTransitionType.fade,
              alignment: Alignment.center,
            ),
          ),
          icon: Icon(Icons.arrow_back_ios),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text("CoinTelegraph",
          style: GoogleFonts.bebasNeue(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "https://cointelegraph.com/",
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
          onPageStarted: (url) {
            print("New website: $url");

            if(url.contains("https://cointelegraph.com/")) {
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