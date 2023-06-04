import 'package:flutter/material.dart';
import 'package:stefani_wong/home_page/common/common_methods.dart';

import 'diet_item.dart';

class PostItemWidget extends StatelessWidget {
  const PostItemWidget(
      {Key? key,
      required this.title,
      required this.keywrod,
      required this.imageUrl,
      required this.backColor,
      required this.isNew,
      required this.iconButtonType})
      : super(key: key);
  final String title;
  final String imageUrl;
  final Color backColor;
  final bool isNew;
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
                isNew == true
                    ? Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffF18066),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                          child: Text(
                            "New",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      )
                    : const SizedBox(),
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
                    SizedBox(
                      width: 5,
                    ),
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
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backColor,
            ),
            child: Center(
              child: Image.asset(
                imageUrl,
                height: 50,
                width: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
