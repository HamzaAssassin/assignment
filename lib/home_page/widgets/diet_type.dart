import 'package:flutter/material.dart';

class DietType extends StatelessWidget {
  const DietType({super.key, required this.isSelected, required this.title});
  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 11,
      decoration: BoxDecoration(
          color: isSelected == true ? const Color(0xff2F98B9) : null,
          borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 5,
            color: isSelected == true ? Colors.white : const Color(0xff2F98B9),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class AddCustumDiet extends StatelessWidget {
  const AddCustumDiet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: Colors.grey.shade300)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Add Custom",
            style: TextStyle(
              fontSize: 6,
              color: Color(0xff2F98B9),
              fontWeight: FontWeight.bold,
            ),
          ),
          CircleAvatar(
            radius: 7,
            backgroundColor: Color(0xff2F98B9),
            child: Icon(
              Icons.add,
              size: 8,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
