import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../Components/Account/profile.dart';
import 'Assignments.dart';
import 'Class_Members.dart';
import 'Show_Assignmemt.dart';
import 'stream_home.dart';



class Courses_Screen_Teacher extends StatefulWidget {
  int index = 0;
  Courses_Screen_Teacher(int i){
    this.index=i;
  }
  @override
  State<Courses_Screen_Teacher> createState() => _Courses_Screen_TeacherState(index);
}

class _Courses_Screen_TeacherState extends State<Courses_Screen_Teacher> {
  int index = 0;
  _Courses_Screen_TeacherState(int i){
    this.index=i;
   }
  var pages = [Stream(),Show_Assignments(1) , Members()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar:
      NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() {
          this.index = index;
        }),
        height: 80,
        backgroundColor: Colors.white,
        destinations:  [
          NavigationDestination(
            icon: SizedBox(
              height: 40,
              width: 40,
              child: SvgPicture.asset(
                'assets/images/home off.svg',
               // color: Color(0xff34345d),
              ),
            ),
              label: ''
              ,tooltip: 'Home',
              selectedIcon:
              SizedBox(
                height: 50,
                width: 50,
                child: SvgPicture.asset(
                  'assets/images/home on.svg',
                  // color: Color(0xff34345d),
                ),
              ),
          ),
          NavigationDestination(
              icon: SizedBox(
                height: 40,
                width: 40,
                child: SvgPicture.asset(
                  'assets/images/task off.svg',
                  // color: Color(0xff34345d),
                ),
              ),
              label: ' ',
              tooltip: 'Tasks',
              selectedIcon:
              SizedBox(
                height: 50,
                width: 50,
                child: SvgPicture.asset(
                  'assets/images/task on.svg',
                  // color: Color(0xff34345d),
                ),
              ),
          ),
          NavigationDestination(
              icon: SizedBox(
                height: 40,
                width: 40,
                child: SvgPicture.asset(
                  'assets/images/people off.svg',
                  // color: Color(0xff34345d),
                ),
              ),
              label: ' ',
              tooltip: 'Class',
              selectedIcon: SizedBox(
                height: 50,
                width: 50,
                child: SvgPicture.asset(
                  'assets/images/people on.svg',
                  // color: Color(0xff34345d),
                ),
              ),
          ),
        ],
      ),

    );
  }
}

