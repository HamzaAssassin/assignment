import 'package:flutter/material.dart';
import 'package:stefani_wong/home_page/common/progress_bar.dart';

import 'graph.dart';

class Health extends StatelessWidget {
  const Health({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PhysicalModel(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          elevation: 4,
          child: SizedBox(
            height: 75,
            width: 66,
            child: IconWithText(
              icon: Icons.heart_broken_outlined,
              text: "72 BPM",
              iconColor: const Color(0xffFF8686),
              boxShadows: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 13),
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          elevation: 4,
          child: Container(
            height: 75,
            width: 171,
            padding: const EdgeInsets.only(left: 5,top: 5),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Blood Pressure (bpm)",
                      style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.navigate_next,size: 12,)
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 47,
                      width: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "last 4 hours",
                            style: TextStyle(fontSize: 8),
                          ),
                          Text(
                            "141/90",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              color: Color(0xffFF8686),
                            ),
                          ),
                          Text(
                            "7 min ago",
                            style: TextStyle(
                              fontSize: 7,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFF8686),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 55,
                      width: 115,
                      child: Graph(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          elevation: 4,
          child: const SizedBox(
            height: 75,
            width: 66,
            child: CirculerProgress(
              size: 20,
              progress: 30,
              progressType: "Health Score",
              progressColor: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

class IconWithText extends StatelessWidget {
  const IconWithText(
      {super.key,
      required this.icon,
      required this.text,
      this.textStyle = const TextStyle(),
      this.iconColor = Colors.black,
      this.iconSize = 25,
      this.boxShadows});
  final String text;
  final TextStyle textStyle;
  final double iconSize;
  final Color iconColor;
  final List<Shadow>? boxShadows;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          shadows: boxShadows ??
              [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: const Offset(0, 5),
                ),
              ],
          size: iconSize,
          color: iconColor,
        ),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}
