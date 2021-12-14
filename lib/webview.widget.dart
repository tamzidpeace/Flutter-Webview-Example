import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

// ignore: must_be_immutable
class Webview extends StatelessWidget {
  Webview({Key? key}) : super(key: key);

  late WebViewXController webviewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebViewX(
          //todo: add your url here
          initialContent: 'https://www.google.com/',
          initialSourceType: SourceType.url,
          onWebViewCreated: (controller) => webviewController = controller,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
