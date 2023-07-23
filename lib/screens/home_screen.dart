import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          children: [
            // 하드코딩되는 값을 만들어줌. UI를 비율에 기반해서 더 유연하게 만들어줌.
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text('25:00',
                    style: TextStyle(
                      color: Theme.of(context).cardColor,
                      fontSize: 89,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
            Flexible(
              flex: 2,
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.play_circle_outline),
                  onPressed: () {},
                  iconSize: 120,
                  color: Theme.of(context).cardColor,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Pomodoros',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color:
                                  Theme.of(context).textTheme.bodyLarge!.color,
                            ),
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 58,
                              fontWeight: FontWeight.w600,
                              color:
                                  Theme.of(context).textTheme.bodyLarge!.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
