import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PomodoroHomeScreen extends StatefulWidget {
  const PomodoroHomeScreen({super.key});

  @override
  State<PomodoroHomeScreen> createState() => _PomodoroHomeScreenState();
}

class _PomodoroHomeScreenState extends State<PomodoroHomeScreen> {
  static int intialTotalCounts = 1500;

  int totalSeconds = intialTotalCounts;
  bool isRunning = false;
  int totalPomodoros = 0;
  // late: you dont have to initialize immediately
  late Timer timer;

// a method called every seconds
  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPomodoros += 1;
        isRunning = false;
        totalSeconds = intialTotalCounts;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds -= 1;
      });
    }
  }

  // create timer
  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1), // every seconds we going to run
      onTick,
    );

    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    // stop timer
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onResetPressed() {
    setState(() {
      timer.cancel();
      totalSeconds = intialTotalCounts;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(2);
  }

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
                child: Text(format(totalSeconds),
                    style: TextStyle(
                      color: Theme.of(context).cardColor,
                      fontSize: 89,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
            const SizedBox(
              width: 100,
              height: 100,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                icon: Icon(isRunning
                    ? Icons.pause_circle_outline
                    : Icons.play_circle_outline),
                onPressed: isRunning ? onPausePressed : onStartPressed,
                iconSize: 120,
                color: Theme.of(context).cardColor,
              ),
              IconButton(
                icon: const Icon(Icons.restore_outlined),
                onPressed: onResetPressed,
                iconSize: 120,
                color: Theme.of(context).cardColor,
              ),
            ]),
            const SizedBox(
              width: 100,
              height: 50,
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(50)),
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
                            '$totalPomodoros',
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
