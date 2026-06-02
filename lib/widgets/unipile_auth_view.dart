import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UnipileAuthView extends StatefulWidget {
  const UnipileAuthView({super.key});

  @override
  State<UnipileAuthView> createState() => _UnipileAuthViewState();
}

class _UnipileAuthViewState extends State<UnipileAuthView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (request) {
            final url = request.url.toLowerCase();
            if (url.contains('success') || url.contains('callback')) {
              Navigator.of(context).pop(true);
              return NavigationDecision.prevent;
            }

            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://api22.unipile.com:15260/hosted/auth'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Secure Account Link')),
      body: WebViewWidget(controller: _controller),
    );
  }
}
