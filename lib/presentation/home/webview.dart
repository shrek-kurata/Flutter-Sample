import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebView extends StatelessWidget{

  const WebView({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
      const WebviewScaffold(
        url: "https://news.penmark.jp"
      )
    );
  }
}