import 'package:flutter/material.dart';

import '../common/common_methods.dart';

class ExercisePerformanceWidget extends StatelessWidget {
  const ExercisePerformanceWidget(
      {Key? key, required this.minutes, required this.remainingTime})
      : super(key: key);
  final int minutes;
  final int remainingTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
        ),
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade400)
            ),
            child: Center(
              child: Image.asset(
                'assets/images/exercise.png',
                height: 50,
                width: 60,
              ),
            ),
          ),
          ExerciseTrackerWidget(
            minutes: minutes,
            remainingTime: remainingTime,
          ),
          const SizedBox(
            width: 15,
          ),
          const CircleAvatar(
            backgroundColor: Color(0xff2F98B9),
            child: Icon(
              Icons.done,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class ExerciseTrackerWidget extends StatefulWidget {
  const ExerciseTrackerWidget(
      {Key? key, required this.minutes, required this.remainingTime})
      : super(key: key);
  final int minutes;
  final int remainingTime;

  @override
  State<ExerciseTrackerWidget> createState() => _ExerciseTrackerWidgetState();
}

class _ExerciseTrackerWidgetState extends State<ExerciseTrackerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          FittedBox(
            fit: BoxFit.cover,
            child: Text(
              durationToMessage(
                widget.minutes,
              ),
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          FittedBox(
            child: Text.rich(
              style: const TextStyle(fontSize: 8),
              TextSpan(
                children: [
                  TextSpan(
                    text: messageOne(
                        minutes: widget.minutes,
                        remainingTime: widget.remainingTime),
                  ),
                  TextSpan(
                    text: messageTwo(
                        minutes: widget.minutes,
                        remainingTime: widget.remainingTime),
                    style: const TextStyle(
                      color:  Color(0xff2F98B9),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          LinearProgressIndicator(
            value: getSpentTime(widget.minutes, widget.remainingTime) /
                widget.minutes,
            minHeight: 10,
            color: Color(0xff2F98B9),
          ),
        ],
      ),
    );
  }
}

class SuggestedExercise extends StatelessWidget {
  const SuggestedExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          "Suggested Exercise",
          style: TextStyle(
            fontSize: 11,
            color: Color(0xff2F98B9),
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xff2F98B9),
            ),
          ),
          child: Icon(
            Icons.arrow_forward_rounded,
            size: 8,
            color: Color(0xff2F98B9),
          ),
        )
      ],
    );
  }
}
