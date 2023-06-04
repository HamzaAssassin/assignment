import 'package:flutter/material.dart';
import 'package:stefani_wong/home_page/widgets/excercise_performance_widget.dart';
import 'package:stefani_wong/home_page/widgets/post_item_widget.dart';
import 'package:stefani_wong/home_page/widgets/widget_todo_item.dart';

import '../widgets/app_bar.dart';
import '../widgets/bottom_app_bar.dart';
import '../widgets/budget.dart';
import '../widgets/diet_item.dart';
import '../widgets/health.dart';
import '../widgets/medicines.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    var width = screenSize.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.1,
                width: width,
                child: const MyAppBar(),
              ),
              Container(
                height: height * 0.01,
                width: width,
                margin: const EdgeInsets.only(right: 60),
                child: const Center(
                  child: Text(
                    "5 Days Streak",
                    style: TextStyle(
                      fontSize: 8,
                      color: Colors.black38,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.15,
                width: width * 0.9,
                child: const Health(),
              ),
              SizedBox(
                height: height * 0.03,
                width: width * 0.9,
                child: const Text(
                  "Took Medicine today",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                ),
              ),
              SizedBox(
                height: height * 0.15,
                width: width * 0.9,
                child: MedicineShedule(),
              ),
              SizedBox(
                height: height * 0.03,
                width: width * 0.9,
                child: const Text(
                  "Budget for the day",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                ),
              ),
              SizedBox(
                height: height * 0.15,
                width: width * 0.9,
                child: const Budget(),
              ),
              SizedBox(
                height: height * 0.03,
                width: width * 0.9,
                child: const Text(
                  "Diet",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                ),
              ),
              const SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DietItem(),
                    DietItem(),
                    DietItem(),
                    DietItem(),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
                width: width * 0.9,
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Exercise",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.95,
                child: const ExercisePerformanceWidget(
                    minutes: 20, remainingTime: 10),
              ),
              SizedBox(
                height: height * 0.05,
                width: width * 0.9,
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Todos",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                  ),
                ),
              ),
              TodoListItemWidget(
                  todoTitle: "Measure your blood pressure",
                  time: "11:00 AM",
                  isCompleted: true),
              TodoListItemWidget(
                  todoTitle: "Go for CBC lab test",
                  time: "4:00 PM",
                  isCompleted: true),
              TodoListItemWidget(
                  todoTitle: "Refill your medicines",
                  time: "8:00 P M",
                  isCompleted: true),
              SizedBox(
                height: height * 0.05,
                width: width * 0.9,
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Insight of You",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                  ),
                ),
              ),
              const PostItemWidget(
                  title: "How to fall asleep without efforts",
                  keywrod: "Reading | Anxiety",
                  iconButtonType: Icons.book_online_outlined),
              const PostItemWidget(
                  title: "Boost your energy with these simple techniques",
                  keywrod: "Video | Productivity",
                  iconButtonType: Icons.videocam_off),
              SizedBox(
                height: height * 0.1,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: const Color(0xff2F98B9),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: height * 0.07,
          width: width * 0.9,
          child: const MyBottomNavigationBar(),
        ),
      ),
    );
  }
}
