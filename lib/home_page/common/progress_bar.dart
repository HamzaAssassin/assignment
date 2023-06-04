import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CirculerProgress extends StatelessWidget {
  const CirculerProgress(
      {super.key,
      required this.size,
      required this.progress,
      this.progressCategory = "",
      this.progressColor = Colors.black,
      this.textColor = Colors.black,
      required this.progressType});
  final double size;
  final double progress;

  final String progressCategory;
  final String progressType;
  final Color progressColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration:const BoxDecoration(
        color: Color(0xffD9EBF1),
        shape: BoxShape.circle,
       
      ),
          child: CircularPercentIndicator(
            radius: size,
            backgroundWidth: 0,
            percent: progress / 100,
            startAngle: 90,
            lineWidth: 4,
            progressColor: progressColor,
            circularStrokeCap: CircularStrokeCap.round,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${progress.toString().substring(0, 2)}%',
                  style:
                      const TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        Text(
          progressType,
          style: TextStyle(
              fontSize: 8, color: textColor, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
