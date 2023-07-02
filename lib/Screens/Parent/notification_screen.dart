import 'package:e/Screens/Parent/student_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    List<StudentModel> studentModel = [
      StudentModel('Hoda',
          'https://monteluke.com.au/wp-content/gallery/linkedin-profile-pictures/9.JPG'),
      StudentModel('Nada',
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
      StudentModel('Ahmed',
          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Volodymyr_Zelensky_Official_portrait_%28cropped%29.jpg/360px-Volodymyr_Zelensky_Official_portrait_%28cropped%29.jpg'),
      StudentModel('Tarek',
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
      StudentModel('Mohamed',
          'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg'),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffd9d9d9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),

        toolbarHeight: 130,
        title: Text(
          '${studentModel[2].name}',
          style: const TextStyle(
            fontSize: 32,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontFamily: "Poppins",
            color: Color(0xff34345d),
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          iconSize: 32.5,
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Color(0xff34345d),
        ),
      ),
      body: ListView.builder(
          itemBuilder:(context,index){
            return  Padding(
              padding:  EdgeInsets.only(top: 30,right: 20,left: 20),
              child: Container(
                width: 340,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    //border: Border.all(color: Colors.grey.shade300,),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: const Offset(0, 5))
                    ]),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 6.0),
                      child: Row(
                        children: [
                          Text('Classroom',
                        style:  TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                          color: Color(0xff34345d),
                        ),),
                          Spacer(),
                          Text('15 Apr'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 6.0),
                      child: Text('Mr.Ahmed  posted new Assignment on mathematics',
                        style:  TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Poppins",
                          color: Color(0xff34345d),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        itemCount: 4,
      ),
    );
  }
}
