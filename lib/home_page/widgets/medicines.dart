// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../model/medicine.dart';

class MedicineShedule extends StatelessWidget {
  MedicineShedule({super.key});
  final List<MedicineList>? medicineList = [
    MedicineList(
        image: "assets/images/med_image.png",
        medicineName: "Alprazolam",
        dose: "0.25"),
    MedicineList(
        image: "assets/images/med_image.png",
        medicineName: "Alprazolam",
        dose: "0.25"),
    MedicineList(
        image: "assets/images/med_image.png",
        medicineName: "Alprazolam",
        dose: "0.25"),
    MedicineList(
        image: "assets/images/med_image.png",
        medicineName: "Alprazolam",
        dose: "0.25"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: medicineList!.length,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    width: 87,
                    height: 61,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(2, 2),
                      ),
                    ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          medicineList![index].medicineName,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dose: ${medicineList![index].dose} mg",
                              style: TextStyle(
                                fontSize: 6,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "After eating",
                              style: TextStyle(
                                fontSize: 4,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 61,
                    height: 12,
                    decoration: BoxDecoration(
                        color: Color(0xff419BB8),
                        borderRadius: BorderRadius.circular(2)),
                    child: Center(
                      child: Text(
                        "Take",
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 35,
              right: 35,
              child: Container(
                width: 31,
                height: 27,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(1, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                
                child: Center(
                  child: Image.asset(
                    medicineList![index].image,
                    width: 19,
                    height: 18,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}


