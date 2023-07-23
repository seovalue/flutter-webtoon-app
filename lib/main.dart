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
  List<int> numbers = [];
  bool showTitle = true;

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  void toggle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme:
                const TextTheme(titleLarge: TextStyle(color: Colors.blue))),
        home: Scaffold(
            backgroundColor: const Color(0xFFF4EDDB),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                showTitle ? const MyLargeTitle() : Text('nothing'),
                IconButton(onPressed: toggle, icon: Icon(Icons.remove_red_eye)),
              ],
            ))));
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    super.initState();
    print("init state");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Text('Hello Joanne',
        style: TextStyle(
          fontSize: 40,
          color: Theme.of(context).textTheme.titleLarge!.color,
        ));
  }
}
