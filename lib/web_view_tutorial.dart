import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewTutorial extends StatefulWidget {
  const WebViewTutorial({super.key});

  @override
  State<WebViewTutorial> createState() => _WebViewTutorialState();
}

class _WebViewTutorialState extends State<WebViewTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Webview tutorial")),
      body: const WebView(
        initialUrl: "https://google.com",
      ),
    );
  }
}
