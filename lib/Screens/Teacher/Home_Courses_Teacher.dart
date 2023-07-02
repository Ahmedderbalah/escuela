import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../Components/Courses/post.dart';
import '../../Components/Teacher/create_material.dart';
import '../../Components/Teacher/level.dart';

class Home_Courses_Teacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffd9d9d9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),

        toolbarHeight: 130,
        title:
        const  Text(
          'Hi,Ahmed',
          style: TextStyle(
            fontSize: 32,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontFamily: "Poppins",
            color: Color(0xff34345d),
          ),
        ),
        centerTitle: true,
        leading:
        IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Color(0xff34345d),// add a menu icon to the left side
          onPressed: () {
            // add functionality to the menu icon
          },
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Level(),
          Level(),
          Level(),
          Level(),
        ],
      ),
    );
  }
}
