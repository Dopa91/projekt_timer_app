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

  bool isActive = true;

//   void countUp() async {
//     for (int i = 0;; i++) {
//       await Future.delayed(
//         const Duration(seconds: 1),
//       );
//       setState(
//         () {
//           seconds++;
//         },
//       );
//     }
//   }
// }

// Alternative zu TimerWidget
  void startStopwatchNew() async {
    while (isActive) {
      await Future.delayed(
        const Duration(seconds: 1),
      );
      setState(
        () {
          seconds++;
        },
      );
    }
  }

  // ohne delayed
  // void startStopwatch() {
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
// TimerWidget
  void startStopwatch() {
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

// TimerWidget
  Future<void> stopStopwatch() async {
    Future.delayed(
      const Duration(milliseconds: 50),
      () => timer.cancel(),
    );
  }

  Future<void> stopStopwatchNew() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      isActive = false;
    });
  }
  // ohne delayed
  // void stopStopwatch() {
  //   () => timer.cancel();
  // }

  // ohne delayed
  // void resetStopwatch() {
  //   return setState(
  //     () {
  //       seconds = 0;
  //     },
  //   );
  // }

  Future<void> resetStopwatch() async {
    await Future.delayed(const Duration(seconds: 1));
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
            "$seconds s",
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
                onTap: startStopwatchNew,
                buttonName: 'Start',
              ),
              StopwatchFunctionButton(
                onTap: stopStopwatchNew,
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
