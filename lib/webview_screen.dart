import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:OneApp/constants.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'nointernet_screen.dart';

class WebViewScreen extends StatefulWidget {
  final String url;

  WebViewScreen(this.url);

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late final WebViewController controller;
  bool isLoading = true;
  bool isInitialLoad = true; // Track initial load
  Timer? loadingTimer;

  @override
  void initState() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        // Redirect to NoInternetScreen immediately if there is no internet connection
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => nointernet_screen()));
      } else {
        Navigator.pop(context);
      }
    });
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(kdarkcolor))
      ..setNavigationDelegate(NavigationDelegate(
        onNavigationRequest: (navigation) {
          final host = Uri.parse(navigation.url).host;
          if (host.contains(widget.url)) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Blocking navigation to $host',
                ),
              ),
            );
            return NavigationDecision.navigate;
          }
          return NavigationDecision.navigate;
        },
        onPageStarted: (url) {
          // Start loading indicator only during initial load
          if (isInitialLoad) {
            setState(() {
              isLoading = true;
            });
          }
        },
        onPageFinished: (url) {
          // loadingTimer?.cancel();
          if (isInitialLoad) {
            setState(() {
              isLoading = false;
              isInitialLoad = false;
              HapticFeedback.heavyImpact();

              // Disable initial load indicator
            });
          }
        },
      ));

    controller.loadRequest(Uri.parse(widget.url));
  }

  @override
  void dispose() {
    loadingTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await controller.canGoBack()) {
          controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Flutter WebView'),
        // ),
        body: SafeArea(
          child: Stack(
            children: [
              // WebViewWidget(controller: controller)
              // WebViewWidget
              WebViewWidget(
                controller: controller,
              ),

              if (isLoading && isInitialLoad)
                Container(
                  color: Colors.transparent,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Color(kpinkcolor),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
