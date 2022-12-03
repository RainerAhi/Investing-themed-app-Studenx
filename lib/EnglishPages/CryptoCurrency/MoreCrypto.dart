import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studenx_oigev2/AktsiadFolder/Aktsiad.dart';
import 'package:studenx_oigev2/CryptoFolder/krupto.dart';
import 'package:studenx_oigev2/EnglishPages/CryptoCurrency/CryptoCurrency.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class MoreCrypto extends StatefulWidget {
  const MoreCrypto({Key? key}) : super(key: key);

  @override
  State<MoreCrypto> createState() => _MoreCryptoState();
}

class _MoreCryptoState extends State<MoreCrypto> {
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
        title: Text("crypto prices",
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