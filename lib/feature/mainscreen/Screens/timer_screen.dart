import 'package:flutter/material.dart';
import 'package:projekt_timer_app/feature/mainscreen/widgets/stopwatch_function_button.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
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
    );
  }
}
