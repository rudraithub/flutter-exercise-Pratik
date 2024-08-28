import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizbook_application/utils/contstant.dart';
import 'package:quizbook_application/views/historyscreen.dart';
import 'package:quizbook_application/views/homescreen.dart';
import 'package:quizbook_application/views/profilescreen.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int currentIndex = 0;

  final List<Widget> tabBarList = [home_screen(), history_screen(),profile_screen()];

  void onTapMethod(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapMethod,
        currentIndex: currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_sharp),
            label: 'Profile',
          ),
        ],
      ),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("Standards"),
      //   elevation: 8,
      //   shadowColor: greyColor,
      // ),
      body: tabBarList[currentIndex],
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:quizbook_application/views/historyscreen.dart';
// import 'package:quizbook_application/views/homescreen.dart';

// class bottom_tabbar extends StatefulWidget {
//   const bottom_tabbar({super.key});

//   @override
//   State<bottom_tabbar> createState() => _bottom_tabbarState();
// }

// class _bottom_tabbarState extends State<bottom_tabbar> {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     var height = size.height;
//     var Width = size.width;
//     var currentindex = 0;
//     final List tabbarlist = [home_screen(),History_screen()];
//     void ontapmethod(int index){
//       setState(() {
//         currentindex=index;
//       });
//     }
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: ontapmethod,
//         currentIndex: currentindex,
//         items:<BottomNavigationBarItem> [
//           BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home',),
//           BottomNavigationBarItem(icon: Icon(Icons.watch_later),label: 'History'),
//           BottomNavigationBarItem(icon: Icon(Icons.person_2_sharp),label: 'Profile'),
//           ],
//           ),
          
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Standards"),
//       ),
//       body: tabbarlist[currentindex],
//     );
//   }
// }