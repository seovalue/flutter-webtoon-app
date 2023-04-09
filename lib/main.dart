import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(App());
}

// starting point of this application (root of this application)
class App extends StatelessWidget {
  // build 메서드는 Widget의 UI를 만드는 것
  @override // dart에서 제공되는 애노테이션임.
  Widget build(BuildContext context) {
    // root application should return material or cupertino (google, apple)
    // 우리가 어떤 스타일을 사용할 지 정해주는 것 (base ui)
    // google에서 만든 framework이기 때문에 Material이 더 다양한 것을 제공해줌.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello flutter!'),
        ),
        body: Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}
