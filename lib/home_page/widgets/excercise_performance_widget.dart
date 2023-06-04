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
          const CircleAvatar(
            maxRadius: 30,
            backgroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Circle-icons-running.svg/2048px-Circle-icons-running.svg.png',
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
            child: Icon(Icons.done),
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
                      color: Colors.green,
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
          ), // Progress value between 0.0 and 1.0
        ],
      ),
    );
  }
}
