import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'myThemes.dart';


final iconClicked = ['home', 'search', 'download', 'settings'];

class MyBottomNavBar extends StatelessWidget {
  int currentIndex;

  List<Widget> unselectedIcons;
  List<Widget> selectedIcons;
  void Function(int) tapped;
  MyBottomNavBar(
      {Key? key,
      this.currentIndex = 0,
      required this.tapped,
      required this.unselectedIcons,
      required this.selectedIcons})
      : super(key: key);

  bool isDone = false;
  

  // TODO: implement initState
  List<IconButton> listing() {
    List<IconButton> actionOnInputList = [];
    for (int i = 0; i < selectedIcons.length; i++) {
      actionOnInputList.add(IconButton(
          onPressed: () {
            currentIndex = i;
            tapped(currentIndex);
          },
          icon: currentIndex == i ? selectedIcons[i] : unselectedIcons[i]));
    }
    return actionOnInputList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: myThemes.darkFontTheme,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: listing(),
        )

        //  BottomNavigationBar(
        //   backgroundColor: Color.fromARGB(255, 60, 47, 47),
        //   currentIndex: index,
        //   type: BottomNavigationBarType.fixed,
        //   onTap: pressed,
        //   selectedItemColor: Color.fromARGB(255, 255, 244, 230),
        //   unselectedItemColor: Color.fromARGB(255, 154, 148, 148),
        //   showSelectedLabels: false,
        //   showUnselectedLabels: false,
        //   items: NavBarItems,
        // ),
        );
  }
}
