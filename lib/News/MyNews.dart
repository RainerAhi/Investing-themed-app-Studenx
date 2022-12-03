import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNewsPage extends StatefulWidget {
  const MyNewsPage({Key? key}) : super(key: key);

  @override
  State<MyNewsPage> createState() => _MyNewsPageState();
}

class _MyNewsPageState extends State<MyNewsPage> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xff5ce1e6),
        title: Text("Jälgi uudiseid, et \nolla kursis asjadega",
          style: GoogleFonts.bebasNeue(
            fontSize: 40,
          ),
        ),
      ),
      body: SafeArea(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "https://www.bloomberg.com/europe",
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
          onPageStarted: (url) {
            print("New website: $url");

            if(url.contains("https://www.bloomberg.com/europe")) {
              Future.delayed(Duration(milliseconds: 300), () {
                controller.runJavascriptReturningResult(
                    "document.getElementsByTagName('header')[0].style.display='none'");
              });
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.import_export, size: 32,),
        onPressed: () async {
          controller.loadUrl("https://www.wsj.com/news/markets?mod=djmc_DGMar&gclsrc=aw.ds");
        },
      ),
    );
  }
}
