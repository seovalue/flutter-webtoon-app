import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/button.dart';
import 'package:flutter_app/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void onClicked() {
    counter = counter + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xFFF4EDDB),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Click Count',
                  style: TextStyle(fontSize: 40),
                ),
                Text(
                  '$counter',
                  style: const TextStyle(fontSize: 40),
                ),
                IconButton(
                    iconSize: 40,
                    onPressed: onClicked,
                    icon: const Icon(Icons.add_box_rounded))
              ],
            ))));
  }
}
