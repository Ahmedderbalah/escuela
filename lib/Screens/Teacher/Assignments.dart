import 'package:e/Data/Assignments.dart';
import 'package:e/Data/Students.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../Components/Teacher/assignments.dart';
import '../../Components/Teacher/create_assignment.dart';
import 'Courses_Screen_Teacher.dart';
import 'Show_Assignmemt.dart';

class Assignments extends StatelessWidget {
  int ?AssId ;
  List AD=Data_Assignment();
  List SD = Students();
  Assignments(List AD,int assId){
    this.AD=AD;
    this.AssId=assId;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3eaa97),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),

        toolbarHeight: 150,
        title:
          Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Show_Assignments(1)),
                        (Route<dynamic> route) => false,
                  );
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 0.0,top: 10),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Text(
                      'Science',
                      style: TextStyle(
                        fontSize: 32,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: Colors.white,
                      ),
                    ),
                   Text(
                      'MR:Ahmed Ali',
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: SvgPicture.asset('assets/images/science.svg'),
          )
        ],
      ),
      body:  ListView(
        scrollDirection: Axis.vertical,
        children: [
          for(int i=0;i<AD[AssId!]['studentId'].length;i++)
            Assignment(AD , i,AssId! )
        ],
      ),
    );
  }
}
