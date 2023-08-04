import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

// user-agent를 추가하지 않으면 네이버에서 차단함.
// 따로 User-Agent 값을 추가하지 않으면 기본값으로 `Dart/<version> (dart:io)` 가 들어갑니다.
// (https://api.flutter.dev/flutter/dart-io/HttpClient/userAgent.html)
// ref. https://gist.github.com/preinpost/941efd33dff90d9f8c7a208da40c18a9
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..userAgent =
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36';
  }
}
