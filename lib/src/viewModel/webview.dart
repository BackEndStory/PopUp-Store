

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:pop_up_store/src/view/app.dart';


class UrlWebView extends StatelessWidget {

  final url;
  WebViewController? controller;

  UrlWebView({
    Key? key,
    required this.url

  }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PopAppBar(),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: this.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }

  AppBar PopAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text('POP-UP Store',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600
        ),
      ),
      backgroundColor: Colors.blue[300],
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.home,)
        )
      ],
    );
  }
}