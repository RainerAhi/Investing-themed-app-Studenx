import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studenx_oigev2/CryptoFolder/krupto.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/Stocks.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Investope extends StatefulWidget {
  const Investope({Key? key}) : super(key: key);

  @override
  State<Investope> createState() => _InvestopeState();
}

class _InvestopeState extends State<Investope> {
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
              child: Crypto(),
              type: PageTransitionType.fade,
              alignment: Alignment.center,
            ),
          ),
          icon: Icon(Icons.arrow_back_ios),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text("Investopedia",
          style: GoogleFonts.bebasNeue(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "https://www.investopedia.com/cryptocurrency-news-5114163",
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
          onPageStarted: (url) {
            print("New website: $url");

            if(url.contains("https://www.investopedia.com/cryptocurrency-news-5114163")) {
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