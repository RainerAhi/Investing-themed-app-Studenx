import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studenx_oigev2/CryptoFolder/krupto.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class RohkemKrupto extends StatefulWidget {
  const RohkemKrupto({Key? key}) : super(key: key);

  @override
  State<RohkemKrupto> createState() => _RohkemKruptoState();
}

class _RohkemKruptoState extends State<RohkemKrupto> {
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
        title: Text("krüpto hinnad",
          style: GoogleFonts.bebasNeue(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "https://coinmarketcap.com/",
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
          onPageStarted: (url) {
            print("New website: $url");

            if(url.contains("https://coinmarketcap.com/")) {
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