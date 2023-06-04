import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/images/menu_icon.png",
            height: 14.12,
            width: 13,
          ),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back,",
              style: TextStyle(
                color: Color(0xFFADA4A5),
                fontSize: 12
              ),
            ),
            Text(
              "Stefani Wong",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(10),
          width: 35,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFF3F1F1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 10,
                blurRadius: 10,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: const Icon(Icons.notifications_none_outlined, size: 16),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 17.5,
              backgroundColor: Color(0xff92A3FD),
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "Streak Score:",
                  style: TextStyle(
                    color: Color(0xFFADA4A5),
                    fontSize: 4,
                  ),
                ),
                Text(
                  "1250",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 4),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
