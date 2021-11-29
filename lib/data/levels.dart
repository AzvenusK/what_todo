import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:flutter/material.dart';

class Level extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        StepProgressIndicator(
          totalSteps: 30,
          currentStep: 16,
          selectedColor: Colors.green,
          unselectedColor: Colors.grey,
        ),
      ],
    );
  }
}
