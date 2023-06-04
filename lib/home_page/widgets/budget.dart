import 'package:flutter/material.dart';

import '../common/progress_bar.dart';

class Budget extends StatelessWidget {
  const Budget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CirculerProgress(
          size: 30,
          progress: 0,
          progressType: "Calories",
        ),
        CirculerProgress(
          size: 30,
          progress: 70,
          progressType: "Proteins",
          progressColor: Color(0xffFF8686),
        ),
        CirculerProgress(
          size: 30,
          progress: 30,
          progressType: "Phosphor",
          progressColor: Color(0xff8F6C83),
        ),
        CirculerProgress(
          size: 30,
          progress: 20,
          progressType: "Calories",
          progressColor: Colors.blue,
        ),
      ],
    );
  }
}
