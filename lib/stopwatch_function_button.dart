import 'package:flutter/material.dart';

class StopwatchFunctionButton extends StatelessWidget {
  const StopwatchFunctionButton({
    super.key,
    required this.buttonName,
    this.onTap,
  });

  final String buttonName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 96,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 14, 65, 107)),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            const Expanded(
              child: SizedBox(),
            ),
            Text(
              buttonName,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
