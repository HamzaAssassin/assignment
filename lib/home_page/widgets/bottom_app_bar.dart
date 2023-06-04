import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style15,
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: Image.asset("assets/images/home.png"),
          title: "•",
          inactiveIcon: const Icon(
            Icons.home_max_outlined,
            color: Color(0xff008AB6),
          ),
          activeColorPrimary: Color(0xff008AB6),
          inactiveColorPrimary: Color(0xff008AB6)),
      PersistentBottomNavBarItem(
        icon: Image.asset("assets/images/pill.png"),
        title: "Medicine",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset("assets/images/message.png"),
        title: "Social",
        inactiveIcon: Image.asset("assets/images/message.png"),
        activeColorPrimary: Color(0xff008AB6),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset("assets/images/Group.png"),
        title: "Progress",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset("assets/images/Wellness.png"),
        title: "LifeStyle",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      Text("data"),
      Text("data"),
      Text("data"),
      Text("data"),
      Text("data"),
    ];
  }
}
