# flutter 

nomadcoder flutter 강의 메모

### 2.3
widget은 레고와 같다고 볼 수 있음. 위젯을 레고 블럭처럼 합쳐서 앱을 만들 수 있음. 공식 위젯도 많음. flutter widget 카탈로그에서 확인할 수 있음. widget of week도 있음. (나중에 고수가 되면 확인해보길)

xcode simulator 열 때: `open -a Simulator`
화면은 scaffold를 가져야한다는 rule이 있음. saffold는 화면의 구조를 결정해줌. 약간 건축할 때 지지대같은 것.

```dart
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
```

### 2.5
recap은 

widget을 사용할 때마다 class를 사용하고 있음. 인스턴스화됨. 
```dart
// named parameter 사용하지 않은 경우
class Player {
  String name;
  
  Player(this.name); // constructor of player
}

void main() {
  var joanne = Player("joanne");
  runApp(App());
}
```

```dart
// named parameter 사용한 경우
class Player {
  String name;

  Player({required this.name}); // constructor of player
}

void main() {
  var joanne = Player(name: "joanne");
  runApp(App());
}
```

```dart
String? name; // may or may not have name
```
