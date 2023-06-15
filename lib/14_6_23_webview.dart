import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: webbview(),));
}

class webbview extends StatefulWidget {
  const webbview({Key? key}) : super(key: key);

  @override
  State<webbview> createState() => _webbviewState();
}

class _webbviewState extends State<webbview> {
  late WebViewController controller;

  @override
  void initState() {
    controller = WebViewController()
      ..loadRequest(Uri.parse("https://www.flipkart.com/"))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("app bar")),
      body: WebViewWidget(controller: controller),
    );
  }
}
