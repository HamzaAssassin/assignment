import 'package:flutter/material.dart';
class DietItem extends StatelessWidget {
  const DietItem({
    Key? super.key,
    this.imageUrl =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGNOLsRiG7N_qbBZ2xj2853Z1ECYNp9xXuGQ&usqp=CAU',
    this.saladText = 'Fruit Salad',
    this.iconData1 = Icons.delete_outline,
    this.iconText1 = 'Delete',
    this.iconData2 = Icons.transform_outlined,
    this.iconText2 = 'Transfer',
  });

  final String imageUrl;
  final String saladText;
  final IconData iconData1;
  final String iconText1;
  final IconData iconData2;
  final String iconText2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          FruitSalad(
            text: saladText,
            imageUrl: imageUrl,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconWithTextWidget(
                leftIcon: iconData1,
                text: iconText1,
                color: Colors.green,
              ),
              const SizedBox(
                width: 5,
              ),
              IconWithTextWidget(
                leftIcon: iconData2,
                text: iconText2,
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FruitSalad extends StatelessWidget {
  final String imageUrl;
  final String text;

  const FruitSalad({
    Key? key,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 63,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: NetworkImage(
              imageUrl,
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1), BlendMode.darken)),
      ),
      child: Center(
        child: Container(
          width: 56,
          height: 13,
          padding: const EdgeInsets.all(3),
          color: Colors.white,
          child: Center(
            child: FittedBox(
              child: Text(
                text,
                style: const TextStyle(
                  // backgroundColor: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IconWithTextWidget extends StatelessWidget {
  final IconData leftIcon;
  final String text;
  final Color color;
  final double size;
  final double fontSize;

  const IconWithTextWidget({
    Key? key,
    required this.leftIcon,
    required this.text,
    required this.color,
    this.size = 8,
    this.fontSize = 7,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          leftIcon,
          size: size,
          color: color,
        ),
        Text(
          text,
          softWrap: true,
          style: TextStyle(
            color: Colors.black,
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}