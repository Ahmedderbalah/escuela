import 'package:e/Data/Students.dart';
import 'package:flutter/material.dart';
import 'grade_assignment.dart';
import 'save_grade.dart';

class Assignment extends StatefulWidget {
  List ?AD ;
  int ?sid ;
  int ?aid;
  Assignment(List l , int sid , int aid ){
    this.AD=l;
    this.aid=aid;
    this.sid=sid;
  }

  @override
  State<Assignment> createState() => _AssignmentState( AD! ,  sid!,  aid!);
}

class _AssignmentState extends State<Assignment> {
  List ?AD ;
  int ?sid ;
  int ?aid;
  List  SD = Students();
  _AssignmentState(List l , int sid , int aid ){
    this.AD=l;
    this.aid=aid;
    this.sid=sid;
  }
  @override
  int tapCount = 0;
  Widget NewColumn = const Column(
    children: [

    ],
  );
  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
      child: InkWell(
          onTap: () {
            setState(()
            /*{
              if (tapCount == 0) {
                NewColumn = Grede_Assignment();
              }
             else if (tapCount == 1)
              {
                NewColumn = Grede_Assignment();
              }
              else {
                // Reset to original state on third tap
                NewColumn = const Column(
                  children: [

                  ],
                );
                tapCount = 0;
              }
              tapCount++;
            }*/
            {
              if (AD![aid!]['IsSaved'][sid!] ==0) {
                if (tapCount == 0) {
                  NewColumn= Grede_Assignment( AD! ,  sid!,  aid!);
                }
                else if (tapCount == 1)
                {
                  NewColumn= Grede_Assignment( AD! ,  sid!,  aid!);
                }
                else {
                  // Reset to original state on third tap
                  NewColumn = const Column(
                    children: [

                    ],
                  );
                  tapCount = 0;
                }
                tapCount++;
              }
              else if (AD![aid!]['IsSaved'][sid!] ==1){
                if (tapCount == 0) {
                  NewColumn= Save_Grade(AD! ,  sid!,  aid!);
                }
                else if (tapCount == 1)
                {
                  NewColumn= Save_Grade(AD! ,  sid!,  aid!);
                }
                else {
                  // Reset to original state on third tap
                  NewColumn = const Column(
                    children: [

                    ],
                  );
                  tapCount = 0;
                }
                tapCount++;
              }
            }
            );

          },
        child: Container(
          width: (s.width) * 0.9,
          //height: h,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color(0xff34345d),
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: const Offset(0, 5))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                 Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff34345d),
                      child: Icon(
                        Icons.person,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      '${SD[sid!]['name']}',
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Poppins",
                        color: Color(0xff4f4a4a),
                      ), // SizedBox(
                      //   height: hh,
                      // ),
                    ),
                  ],
                ),

                NewColumn
              ],
            ),
          ),
        ),
      ),
    );
  }
}
