import 'package:flutter/material.dart';

import '../common/common_methods.dart';

class TodoListItemWidget extends StatefulWidget {
  TodoListItemWidget({
    Key? key,
    this.imageUrl =
        'https://images.unsplash.com/photo-1483232539664-d89822fb5d3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG8lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww&w=1000&q=80',
    required this.todoTitle,
    required this.time,
    required this.isCompleted,
  }) : super(key: key);
  final String imageUrl;
  final String todoTitle;
  late bool isCompleted;
  final String time;

  @override
  State<TodoListItemWidget> createState() => _TodoListItemWidgetState();
}

class _TodoListItemWidgetState extends State<TodoListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 3,
        child: Container(
          margin: const EdgeInsets.only(left: 10, bottom: 10),
          // width: mediaQuery.size.width * 0.7,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                width: 38,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                        widget.imageUrl,
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.1), BlendMode.darken)),
                ),
              ),
              Expanded(
                child: Text(
                  truncateText(widget.todoTitle),
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w500),
                ),
              ),
              Checkbox(
                value: widget.isCompleted,
                shape: const CircleBorder(
                  
                ),
                side:const BorderSide(
                    color: Color(0xff2F98B9),
                    width: 1.5
                  ),
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return Color(
                          0xff2F98B9); // Color when checkbox is checked
                    }
                    return null; // Color when checkbox is unchecked
                  },
                ),
                onChanged: (bool? value) {
                  setState(
                    () {
                      widget.isCompleted = value ?? false;
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      Expanded(
        child: Text(
          widget.time,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        height: 18,
        width: 65,
        decoration: BoxDecoration(
            color: const Color(0xff2F98B9),
            borderRadius: BorderRadius.circular(30)),
        child: const Center(
          child: Text(
            "AddReminder",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 6,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
      const SizedBox(
        width: 5,
      )
    ]);
  }
}
