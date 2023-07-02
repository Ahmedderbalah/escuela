
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Components/Courses/member.dart';

class Members extends StatelessWidget {
  const Members({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 10),
        child: Container(
          decoration: BoxDecoration(
      border: Border.all(color:Color(0xff7a808080),),
    borderRadius: BorderRadius.circular(20),
    ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                // Teachers
                Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Text(
                      "Teachers",
                      style: const TextStyle(
                          color:  const Color(0xff3eaa97),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          fontStyle:  FontStyle.normal,
                          fontSize: 32.0
                      ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Divider(
                    color:Color(0xff3eaa97),
                    thickness: 2,
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Icon(
                        Icons.person_outlined,
                        size: 40,
                        color: Color(0xffebebeb),
                      ),
                      backgroundColor: Color(0xff808080),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // Ahmed Ali Mohamed
                    Text(
                        "Ahmed Ali Mohamed ",
                        style: const TextStyle(
                            color:  const Color(0xff4f4a4a),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontStyle:  FontStyle.normal,
                            fontSize: 24.0
                        ),
                        textAlign: TextAlign.left
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: // Students
                  Text(
                      "Students",
                      style: const TextStyle(
                          color:  const Color(0xff3eaa97),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          fontStyle:  FontStyle.normal,
                          fontSize: 32.0
                      ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Divider(
                    color:Color(0xff3eaa97),
                    thickness: 2,
                  ),
                ),
                for(int i=0;i<10;i++)
                Member(),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
