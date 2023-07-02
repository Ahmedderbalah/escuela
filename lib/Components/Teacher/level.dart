import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Screens/Teacher/Courses_Screen_Teacher.dart';

class Level extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 45.0, left: 20, right: 20),
      child:
      GestureDetector(
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            new MaterialPageRoute(builder: (context) => new Courses_Screen_Teacher(0)),
                (Route<dynamic> route) => false,
          );
        },

        /*onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Courses_Screen_Teacher()),
          );
        },*/
        child: Container(
          width: (s.width) * 0.9,
          height: 125,
          decoration: BoxDecoration(
              color: Color(0xff3eaa97),
              border: Border.all(color: Color(0xff3eaa97)),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: const Offset(0, 5))
              ]),
          child:
          Padding(
            padding: EdgeInsets.all(0.0),
            child: Row(
              children: [
               const  Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Science',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          fontFamily: "Poppins",
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Pr.1',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          fontFamily: "Poppins",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:40),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Color(0xff3eaa97) ,
                    child: SvgPicture.asset(
                      'assets/images/science.svg',
                      width: 150,
                      height: 150,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
