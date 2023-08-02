// // import 'dart:async';

// // import 'package:flutter/foundation.dart';
// // import 'package:flutter/gestures.dart';
// // import 'package:flutter/material.dart';
// // import 'package:webview_flutter/webview_flutter.dart';

// // class WebViewScreen extends StatefulWidget {
// //   final String url;

// //   WebViewScreen(this.url);

// //   @override
// //   _WebViewScreenState createState() => _WebViewScreenState();
// // }

// // class _WebViewScreenState extends State<WebViewScreen> {
// //   late final WebViewController controller;
// //   bool loadingPercentage = true;
// //   Timer? loadingTimer;
// //   bool isInitialUrlLoaded = false;

// //   @override
// //   void initState() {
// //     super.initState();
// //     controller = WebViewController()
// //       ..setNavigationDelegate(NavigationDelegate(
// //         onNavigationRequest: (navigation) {
// //           final host = Uri.parse(navigation.url).host;
// //           if (host.contains(widget.url)) {
// //             if (isInitialUrlLoaded) {
// //               // Only go back to previous screen if the current screen is the same as the initial URL.
// //               Navigator.pop(context);
// //               return NavigationDecision.prevent;
// //             }
// //           }
// //           return NavigationDecision.navigate;
// //         },
// //         onPageFinished: (url) {
// //           loadingTimer?.cancel();
// //           setState(() {
// //             isInitialUrlLoaded = true;
// //             loadingPercentage = false;
// //           });
// //         },
// //       ));

// //     loadingTimer = Timer(Duration(seconds: 3), () {
// //       setState(() {
// //         loadingPercentage = true;
// //       });
// //     });

// //     controller.loadRequest(
// //       Uri.parse(widget.url),
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     loadingTimer?.cancel();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return WillPopScope(
// //       onWillPop: () async {
// //         if (await controller.canGoBack()) {
// //           controller.goBack();
// //           return false;
// //         } else {
// //           return true;
// //         }
// //       },
// //       child: Scaffold(
// //         appBar: AppBar(
// //           title: const Text('Flutter WebView'),
// //         ),
// //         body: Container(
// //           child: Stack(
// //             children: [
// //               Offstage(
// //                 offstage: loadingPercentage,
// //                 child: WebViewWidget(
// //                   controller: controller,
// //                   gestureRecognizers: {
// //                     Factory<VerticalDragGestureRecognizer>(
// //                       () => VerticalDragGestureRecognizer(),
// //                     ),
// //                     Factory<ScaleGestureRecognizer>(
// //                       () => ScaleGestureRecognizer(),
// //                     ),
// //                     // Add other custom or built-in gesture recognizers here.
// //                   },
// //                 ),
// //               )
// //             ],
// //           ),
// //           // child: loadingPercentage
// //           //     ? Container(
// //           //         child: Center(child: CircularProgressIndicator()),
// //           //         color: Colors.amber,
// //           //       )
// //           //     : WebViewWidget(
// //           //         controller: controller,
// //           //         gestureRecognizers: {
// //           //           Factory<VerticalDragGestureRecognizer>(
// //           //             () => VerticalDragGestureRecognizer(),
// //           //           ),
// //           //           Factory<ScaleGestureRecognizer>(
// //           //             () => ScaleGestureRecognizer(),
// //           //           ),
// //           //           // Add other custom or built-in gesture recognizers here.
// //           //         },
// //           //       ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'dart:async';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class WebViewScreen extends StatefulWidget {
//   final String url;

//   WebViewScreen(this.url);

//   @override
//   _WebViewScreenState createState() => _WebViewScreenState();

//   static _WebViewScreenState? of(BuildContext context) {
//     return context
//         .dependOnInheritedWidgetOfExactType<_InheritedWebViewState>()
//         ?.state;
//   }
// }

// class _InheritedWebViewState extends InheritedWidget {
//   final _WebViewScreenState state;

//   _InheritedWebViewState({required this.state, required Widget child})
//       : super(child: child);

//   @override
//   bool updateShouldNotify(_InheritedWebViewState oldWidget) => true;
// }

// class _WebViewScreenState extends State<WebViewScreen> {
//   late final WebViewController controller;
//   bool loadingPercentage = true;
//   Timer? loadingTimer;
//   bool isInitialUrlLoaded = false;
//   String currentUrl = '';

//   @override
//   void initState() {
//     super.initState();
//     controller = WebViewController()
//       ..setNavigationDelegate(NavigationDelegate(
//         onNavigationRequest: (navigation) {
//           final host = Uri.parse(navigation.url).host;
//           if (host.contains(widget.url)) {
//             if (isInitialUrlLoaded) {
//               // Only go back to the previous screen if the current screen is the same as the initial URL.
//               Navigator.pop(context);
//               return NavigationDecision.prevent;
//             }
//           }
//           return NavigationDecision.navigate;
//         },
//         onPageFinished: (url) {
//           loadingTimer?.cancel();
//           setState(() {
//             isInitialUrlLoaded = true;
//             loadingPercentage = false;
//           });
//         },
//       ));

//     loadingTimer = Timer(Duration(seconds: 3), () {
//       setState(() {
//         loadingPercentage = true;
//       });
//     });

//     controller.loadRequest(
//       Uri.parse(widget.url),
//     );
//   }

//   @override
//   void dispose() {
//     loadingTimer?.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         if (await controller.canGoBack()) {
//           controller.goBack();
//           return false;
//         } else {
//           return true;
//         }
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter WebView'),
//         ),
//         body: _InheritedWebViewState(
//           state: this,
//           child: Stack(
//             children: [
//               AnimatedSwitcher(
//                 duration: Duration(seconds: 3),
//                 child: WebViewWidget(
//                   controller: controller,
//                   // gestureRecognizers: {
//                   //   Factory<VerticalDragGestureRecognizer>(
//                   //     () => VerticalDragGestureRecognizer(),
//                   //   ),
//                   //   Factory<ScaleGestureRecognizer>(
//                   //     () => ScaleGestureRecognizer(),
//                   //   ),
//                   //   // Add other custom or built-in gesture recognizers here.
//                   // },
//                 ),
//               ),
//               if (loadingPercentage)
//                 Container(
//                   color: Colors.amber,
//                   child: Center(child: CircularProgressIndicator()),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  final String url;

  WebViewScreen(this.url);

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late final WebViewController controller;
  bool isLoading = true;
  Timer? loadingTimer;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
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
        onPageFinished: (url) {
          loadingTimer?.cancel();
          setState(() {
            isLoading = false;
          });
        },
      ));

    loadingTimer = Timer(Duration(seconds: 1), () {
      setState(() {
        isLoading = true;
      });
    });

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
              // WebViewWidget
              WebViewWidget(
                controller: controller,
                gestureRecognizers: {
                  Factory<VerticalDragGestureRecognizer>(
                    () => VerticalDragGestureRecognizer(),
                  ),
                  Factory<ScaleGestureRecognizer>(
                    () => ScaleGestureRecognizer(),
                  ),
                  // Add other custom or built-in gesture recognizers here.
                },
              ),
              // Loading Indicator Overlay
              if (isLoading)
                Container(
                  color: Colors.transparent,
                  child: Center(child: CircularProgressIndicator()),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
