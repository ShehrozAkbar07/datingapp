import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:x_app/View/home_screen/home_screen.dart';
import 'package:x_app/View/profile_view/profile_view.dart';
import 'package:x_app/View/search/search_now.dart';
import 'package:x_app/View/settings/settings.dart';
import 'package:x_app/message/message.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int currentPage = 0;

//   List<Widget> pages = const [
//     HomeScreen(),
//     Searchnow(),
//     HomeScreen(),
//     HomeScreen(),
//     Settings(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.yellow,
//         extendBody: true,
//         body: pages[currentPage],
//         bottomNavigationBar: DotNavigationBar(
//           backgroundColor: Colors.white,
//           currentIndex: currentPage,
//           splashBorderRadius: 50,
//           itemPadding: EdgeInsets.symmetric(horizontal: 10.w),
//           enableFloatingNavBar: true,
//           items: [
//             /// Home
//             DotNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//                 size: 26.sp,
//               ),
//               selectedColor: const Color(0xffa24ab5),
//             ),

//             /// Likes
//             DotNavigationBarItem(
//               icon: Icon(
//                 Icons.search_outlined,
//                 size: 21.sp,
//               ),
//               selectedColor: const Color(0xff73544C),
//             ),

//             /// Search
//             DotNavigationBarItem(
//               icon: Icon(
//                 Icons.message_outlined,
//                 size: 21.sp,
//               ),
//               selectedColor: const Color(0xff73544C),
//             ),

//             /// Profile
//             DotNavigationBarItem(
//               icon: Icon(
//                 Icons.people_alt_outlined,
//                 size: 21.sp,
//               ),
//               selectedColor: const Color(0xff73544C),
//             ),
//             DotNavigationBarItem(
//               icon: Icon(
//                 Icons.settings_outlined,
//                 size: 21.sp,
//               ),
//               selectedColor: const Color(0xff73544C),
//             ),
//           ],
//           onTap: ((index) {
//             if (kDebugMode) {
//               print(index);
//             }
//             setState(() {
//               currentPage = index;
//             });
//           }),
//         ));
//   }
// }

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;
  LinearGradient myGradient = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Colors.blue, Colors.red],
  );

  List<Widget> pages = const [
    HomeScreen(),
    Searchnow(),
    Message(),
    PeopleView(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentPage],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: SnakeNavigationBar.color(
          elevation: 10,
          behaviour: SnakeBarBehaviour.floating,
          snakeShape: SnakeShape.circle,
          height: 50.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          snakeViewColor: Color.fromARGB(255, 151, 76, 168),
          unselectedItemColor: Colors.grey,

          ///configuration for SnakeNavigationBar.color
          // snakeViewColor: selectedColor,
          // selectedItemColor: snakeShape == SnakeShape.indicator ? selectedColor : null,
          // unselectedItemColor: my,
          ///configuration for SnakeNavigationBar.gradient
          // SnakeViewGradient: myGradient,
          //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
          //unselectedItemGradient: unselectedGradient,

          // showUnselectedLabels: showUnselectedLabels,
          // showSelectedLabels: showSelectedLabels,

          currentIndex: currentPage,
          onTap: ((index) {
            if (kDebugMode) {
              print(index);
            }
            setState(() {
              currentPage = index;
            });
          }),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.message_outlined)),
            BottomNavigationBarItem(icon: Icon(Icons.people_alt_outlined)),
            BottomNavigationBarItem(icon: Icon(Icons.settings_outlined)),
          ],
        ),
      ),
    );
  }
}
