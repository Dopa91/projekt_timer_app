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
  Future<void> startStopwatch() async {}

  void stopStopwatch() {}

  void resetStopwatch() {
    stopStopwatch();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
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
    );
  }
}
