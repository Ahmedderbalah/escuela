import 'package:e/Screens/Teacher/Home_Courses_Teacher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../Components/Teacher/create_material.dart';
import '../../Components/Teacher/teacher_post.dart';

class Stream extends StatelessWidget {
  const Stream({super.key});

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home_Courses_Teacher()),
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
      body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Post_teacher(),
              Post_teacher(),
              Post_teacher(),
              Post_teacher(),
              Post_teacher(),
              Post_teacher(),
              Post_teacher(),
              Post_teacher(),
            ],
          ),
          floatingActionButton: Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Create_Material()),
                      (Route<dynamic> route) => false,
                );
              },
              backgroundColor: Color(0xff3eaa97),
              heroTag: null,
              child: Icon(Icons.add,size: 40,),
            ),
          ),
    );
  }
}
