import 'package:flutter/material.dart';
import 'package:projekt_timer_app/feature/homepage/widgets/stopwatch_function_button.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({
    super.key,
  });

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 65, 107),
        title: const Text(
          "Timer",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "15 s",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 96,
              color: Color.fromARGB(255, 14, 65, 107),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StopwatchFunctionButton(
                buttonName: 'Start',
              ),
              StopwatchFunctionButton(
                buttonName: 'Stop',
              ),
            ],
          )
        ],
      ),
    );
  }
}
