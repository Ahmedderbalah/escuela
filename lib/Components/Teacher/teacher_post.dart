import 'package:flutter/material.dart';
import 'description.dart';



class Post_teacher extends StatefulWidget {   Post_teacher({super.key});
  @override
  State<Post_teacher> createState() => _Post_teacherState();
}

class _Post_teacherState extends State<Post_teacher> {
  @override

  int tapCount = 0;

  Widget NewColumn = const Column(
    children: [

    ],
  );

  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child:InkWell(
          onTap: () {
            setState(() {
              if (tapCount == 0) {
                NewColumn = Description();
              }
              else if (tapCount == 1)
              {
                NewColumn = Description();
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
            });
          },
          child: Container(
          width:410,
          child:  Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color:  Color(0xff1f1f39),
              ),
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  leading:
                  CircleAvatar(
                    radius: 25,
                    child: Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.white,
                    ),
                    backgroundColor: Color(0xff34345d),
                  ),
                  title: Text('Mr.Ahmed Ali posted material',
                    style: TextStyle(
                        fontSize: 24,
                        color:  Color(0xff1f1f39),
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      fontFamily: "Poppins",
                    ),),
                  subtitle: Text('Mar.19    3.30 pm',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontFamily: "Poppins",
                    ),
                  ),
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
