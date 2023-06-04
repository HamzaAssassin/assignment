import 'package:flutter/material.dart';

String truncateText(String text, {int maxCharacters = 28}) {
  if (text.length <= maxCharacters) {
    return text;
  }
  return '${text.substring(0, maxCharacters)}...';
}

BoxShadow boxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.1),
  spreadRadius: 10,
  blurRadius: 10,
  offset: const Offset(0, 3), // changes position of shadow
);

String durationToMessage(int minutes) {
  return "Running for $minutes minutes";
}

String messageOne({required int minutes, required remainingTime}) {
  return "You walked: ${minutes - remainingTime} minutes |";
}

String messageTwo({required int minutes, required remainingTime}) {
  return " Left: $remainingTime Minutes";
}

int getSpentTime(int minutes, int remainingTime) => minutes - remainingTime;
