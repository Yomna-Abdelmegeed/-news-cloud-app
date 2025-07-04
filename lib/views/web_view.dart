import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatelessWidget {
  final String url;

  const WebView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
          controller: WebViewController()..loadRequest(Uri.parse(url))),
    );
  }
}
