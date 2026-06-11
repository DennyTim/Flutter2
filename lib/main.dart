import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter2/router/app_router.dart';

void main() {
  /// catches errors thrown within the Flutter framework
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
  };

  /// catches asynchronous errors thrown outside the Flutter context
  PlatformDispatcher.instance.onError = (error, stack) {
    print('Caught asynchronous error: $error');
    return true;
  };

  runApp(const FlutterWidgetsApp());
}

class FlutterWidgetsApp extends StatelessWidget {
  const FlutterWidgetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}
