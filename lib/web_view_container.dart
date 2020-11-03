import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(WebPage());

class WebPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WebPageState();
  }
}

class _WebPageState extends State<WebPage> {
  WebViewController controller;
  var url = "https://cognitivedots.com/rest";


  @override
  Widget build(BuildContext context) {
    print("url:" + url);
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Cognitive Mobile Application"),
          ),
          body: WebView(
            // key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: url,
              onWebViewCreated: (WebViewController webViewController) {
                controller = webViewController;
              }),
        ));
  }
}