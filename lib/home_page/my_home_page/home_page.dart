import 'package:flutter/material.dart';
import 'package:stefani_wong/home_page/widgets/diet_type.dart';
import 'package:stefani_wong/home_page/widgets/excercise_performance_widget.dart';
import 'package:stefani_wong/home_page/widgets/post_item_widget.dart';
import 'package:stefani_wong/home_page/widgets/widget_todo_item.dart';

import '../widgets/app_bar.dart';
import '../widgets/bottom_app_bar.dart';
import '../widgets/budget.dart';
import '../widgets/diet_item.dart';
import '../widgets/health.dart';
import '../widgets/medicines.dart';
import '../widgets/streaks.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 70,
                    margin: const EdgeInsets.only(right: 30),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Streaks(),
                        Streaks(),
                        Streaks(),
                        Streaks(),
                        Streaks(),
                        Streaks(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
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
                ],
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
              SizedBox(
                height: height * 0.05,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DietType(isSelected: true, title: "Breakfast"),
                    SizedBox(
                      width: 15,
                    ),
                    DietType(isSelected: false, title: "Lunch"),
                    SizedBox(
                      width: 15,
                    ),
                    DietType(isSelected: false, title: "Snacks"),
                    SizedBox(
                      width: 15,
                    ),
                    DietType(isSelected: false, title: "Dinner"),
                    SizedBox(
                      width: 15,
                    ),
                    AddCustumDiet()
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DietItem(),
                  DietItem(),
                  DietItem(),
                  DietItem(),
                ],
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
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: height * 0.05,
                  width: width * 0.5,
                  child: const SuggestedExercise(),
                ),
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
              SizedBox(
                width: width*0.95,
                child: TodoListItemWidget(
                    todoTitle: "Measure your blood pressure",
                    time: "11:00 AM",
                    isCompleted: true),
              ),
              SizedBox(
                width: width*0.95,
                child: TodoListItemWidget(
                    todoTitle: "Go for CBC lab test",
                    time: "4:00 PM",
                    isCompleted: false),
              ),
              SizedBox(
                width: width*0.95,
                child: TodoListItemWidget(
                    todoTitle: "Refill your medicines",
                    time: "8:00 P M",
                    isCompleted: false),
              ),
              SizedBox(
                height: height * 0.05,
                width: width * 0.9,
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Insights of You",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                  ),
                ),
              ),
              const PostItemWidget(
                  title: "How to fall asleep without efforts",
                  keywrod: "Reading | Anxiety",
                  imageUrl: 'assets/images/day.png',
                  isNew: true,
                  backColor: Color(0xffEBB456),
                  iconButtonType: Icons.menu_book_sharp),
              const PostItemWidget(
                  title: "Boost your energy with these simple techniques",
                  keywrod: "Video | Productivity",
                  imageUrl: 'assets/images/shuttle.png',
                  isNew: false,
                  backColor: Color(0xffF27F67),
                  iconButtonType: Icons.video_collection_outlined),
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
