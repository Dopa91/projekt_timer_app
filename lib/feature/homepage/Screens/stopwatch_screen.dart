import 'dart:async';
import 'package:flutter/material.dart';
import 'package:projekt_timer_app/feature/homepage/widgets/stopwatch_function_button.dart';

class StopwatchScreen extends StatefulWidget {
  const StopwatchScreen({
    super.key,
  });

  @override
  State<StopwatchScreen> createState() => _StopwatchScreenState();
}

class _StopwatchScreenState extends State<StopwatchScreen> {
  int seconds = 0;
  late Timer timer;

  // Future<void> startStopwatch() async {
  //   timer = Timer.periodic(
  //     const Duration(seconds: 1),
  //     (timer) {
  //       setState(
  //         () {
  //           seconds++;
  //         },
  //       );
  //     },
  //   );
  // }

  Future<void> startStopwatch() async {
    Future.delayed(
      const Duration(seconds: 1),
      () => timer = Timer.periodic(
        const Duration(seconds: 1),
        (timer) {
          setState(
            () {
              seconds++;
            },
          );
        },
      ),
    );
  }

  Future<void> stopStopwatch() async {
    Future.delayed(
      const Duration(milliseconds: 50),
      () => timer.cancel(),
    );
  }

  // ohne delayed
  // void stopStopwatch() {
  //   () => timer.cancel();
  // }

  Future<void> resetStopwatch() async {
    await Future.delayed(const Duration(seconds: 2));
    return setState(
      () {
        seconds = 0;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 65, 107),
        title: const Text(
          "Stopwatch",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$seconds ´s",
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 96,
              color: Color.fromARGB(255, 14, 65, 107),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StopwatchFunctionButton(
                onTap: startStopwatch,
                buttonName: 'Start',
              ),
              StopwatchFunctionButton(
                onTap: stopStopwatch,
                buttonName: 'Stop',
              ),
              StopwatchFunctionButton(
                onTap: resetStopwatch,
                buttonName: 'Reset',
              ),
            ],
          )
        ],
      ),
    );
  }
}
