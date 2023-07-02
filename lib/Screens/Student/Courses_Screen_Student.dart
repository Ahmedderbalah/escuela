import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Home_Courses_Student.dart';
import '../../Components/Account/profile.dart';



class Courses_Screen_Student extends StatefulWidget {
  @override
  State<Courses_Screen_Student> createState() => _Courses_Screen_StudentState();
}

class _Courses_Screen_StudentState extends State<Courses_Screen_Student> {
  int index = 0;
  var pages = [Home_Courses_Student(),Text('3') , Account()];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3eaa97),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),

        ),

        toolbarHeight: 150,
        title: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Art',
                        style: TextStyle(
                          fontSize: 32,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'MR:Ahmed Ali',
                        style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Container(
              child: SvgPicture.asset('assets/images/science.svg'),
            ),
          )
        ],
      ),
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() {
          this.index = index;
        }),
        height: 80,
        destinations: [
          NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
                color: Color(0xff34345d),
              ),
              label: ''
              ,tooltip: 'Home',
              selectedIcon: Icon(
                Icons.home,
                size: 40,
                color: Color(0xff34345d),

              )),
          NavigationDestination(
              icon: Icon(
                Icons.assignment_outlined,
                size: 25,
                color: Color(0xff34345d),
              ),
              label: ' ',
              tooltip: 'Tasks',
              selectedIcon: Icon(
                Icons.assignment,
                size: 40,
                color: Color(0xff34345d),

              )),
          NavigationDestination(
              icon: Icon(
                Icons.group_outlined,
                size: 25,
                color: Color(0xff34345d),
              ),
              label: ' ',
              tooltip: 'Class',
              selectedIcon: Icon(
                Icons.group,
                size: 40,
                color: Color(0xff34345d),
              )),
        ],
      ),
    );
  }
}
