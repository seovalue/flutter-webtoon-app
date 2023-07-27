import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 100,
                color: Colors.red,
                child: const Text('Item 1 - Longer Text'),
              ),
              Flexible(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Text('Item 2'),
                ),
              ),
              Container(
                height: 100,
                color: Colors.orange,
                child: Text('Item 3'),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
