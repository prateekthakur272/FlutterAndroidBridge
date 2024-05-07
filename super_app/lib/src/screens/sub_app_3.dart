import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SubApp3 extends StatelessWidget {
  const SubApp3({super.key});

  @override
  Widget build(BuildContext context) {
    final WebViewController webViewController = WebViewController();
    webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
    webViewController.loadRequest(Uri.parse('https://prateekthakur.dev/'));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sub App 3'),
      ),
      body: WebViewWidget(
        controller: webViewController,
      ),
    );
  }
}
