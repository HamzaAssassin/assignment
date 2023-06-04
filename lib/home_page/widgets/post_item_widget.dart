import 'package:flutter/material.dart';
import 'package:stefani_wong/home_page/common/common_methods.dart';

import 'diet_item.dart';

class PostItemWidget extends StatelessWidget {
  const PostItemWidget(
      {Key? key,
      required this.title,
      required this.keywrod,
      this.imageUrl =
          'https://images.unsplash.com/photo-1483232539664-d89822fb5d3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG8lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww&w=1000&q=80',
      required this.iconButtonType})
      : super(key: key);
  final String title;
  final String imageUrl;
  final IconData iconButtonType;
  final String keywrod;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffF9F9F0),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [boxShadow]),
      margin: const EdgeInsets.only(left: 12, right: 12, top: 0, bottom: 20),
      padding: const EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.67,
            margin: const EdgeInsets.only(right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    IconWithTextWidget(
                      leftIcon: iconButtonType,
                      text: "",
                      color: Color(0xff74746C),
                      size: 25,
                      fontSize: 12,
                    ),
                    // const Text(
                    //   " | ",
                    //   style: TextStyle(
                    //       fontSize: 12,
                    //       color: Color(0xff74746C),
                    //       fontWeight: FontWeight.bold),
                    // ),
                    Text(
                      keywrod,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xff74746C),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const CircleAvatar(
            maxRadius: 34,
            backgroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Circle-icons-running.svg/2048px-Circle-icons-running.svg.png',
            ),
          ),
        ],
      ),
    );
  }
}
