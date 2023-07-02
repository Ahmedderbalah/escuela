import 'package:flutter/material.dart';

import '../../Screens/Teacher/Assignments.dart';

class Save_Grade extends StatelessWidget {
  List ?AD ;
  int ?sid ;
  int ?aid;
  Save_Grade(List l , int sid , int aid ){
    this.AD=l;
    this.aid=aid;
    this.sid=sid;
  }
  final formkey = GlobalKey<FormState>();
  var grade=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Divider(
            color:Color(0xffdadada),
            thickness: 2,
          ),
        ),
        Text(
          'Dear Students, Kindly find the attached files of Lecture 3 and Lecture 4.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Color(0xff34345d),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xfff2f2f2),
              border: Border.all(color: Color(0xffffffff)),
              borderRadius: BorderRadius.circular(10),),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(8)
                        ),
                        color: Color(0xffe0e0e0)
                    ),
                    child:Image.asset('assets/images/pdf.png', width: 35,height: 35,),

                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'file name.pdf',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff4f4a4a),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Icon(Icons.file_download_outlined, size: 26,color: Color(0xff3e3e3e),),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.visibility_outlined, size: 26,color: Color(0xff3e3e3e),),

                ],
              ),
            ),
          ),
        ),
        Divider(
          color:Color(0xffdadada),
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white ,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: MaterialButton(onPressed: (){
                },
                  child:// set grade
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 35),
                    child: Center(
                      child:RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    style: const TextStyle(
                                        color:  const Color(0xff3eaa97),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 24.0
                                    ),
                                    text: "${ AD![aid!]['grades'][sid!]}/"),
                                TextSpan(
                                    style: const TextStyle(
                                        color:  const Color(0xffbababa),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 24.0
                                    ),
                                    text: "/10")
                              ]
                          )
                      )
                    ),
                  ) ,),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffc1c1c1) ,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: MaterialButton(onPressed: (){
                  showDialog(

                      context: context,
                      builder: (context)=>AlertDialog(
                        title: Form(
                          key: formkey,
                          child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Set Grade',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff4f4a4a),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                                  child: TextFormField(
                                    validator: (value){
                                      if(value!.isEmpty)
                                      {
                                        return 'please enter the grade ';
                                      }
                                      return null;
                                    },
                                    controller: grade,
                                    cursorColor: Color(0xff3eaa97) ,
                                    style: TextStyle(color: Color(0xff3eaa97),),
                                    cursorHeight: 30,
                                    decoration: InputDecoration(

                                      fillColor: Color(0xfff2f2f2),
                                      //Color(0xffd9d9d9),
                                      focusedBorder:OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xfff2f2f2),

                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                          borderSide: BorderSide(
                                            color: Color(0xfff2f2f2),
                                          )

                                      ),
                                      filled: true,
                                      hintText: '0-10',
                                      hintStyle: TextStyle(
                                          color: Color(0xffbdbdbd),
                                          //fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                      focusColor: Colors.white,



                                    ),
                                  ),
                                ) ,

                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xff3eaa97) ,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: MaterialButton(onPressed: (){
                                        Navigator.pop(context);
                                      },
                                        child:// set grade
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 2 , horizontal: 22),
                                          child: Center(
                                            child: Text(
                                              "cancel",
                                              style: const TextStyle(
                                                  color:  const Color(0xff4f4a4a),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Poppins",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 14.0
                                              ),
                                            ),
                                          ),
                                        ) ,),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xff3eaa97) ,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xff3eaa97),
                                      ),
                                      child: MaterialButton(onPressed: (){
                                        if(formkey.currentState!.validate()){
                                          AD![aid!]['grades'][sid!]=grade.text;
                                          AD![aid!]['IsSaved'][sid!]=1;
                                          Navigator.pushAndRemoveUntil(
                                            context, new MaterialPageRoute(builder: (context) =>
                                          new Assignments(AD! , aid!)),
                                                (Route<dynamic> route) => false,//
                                          );


                                        }
                                      },
                                        child:// set grade
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 2 , horizontal: 22),
                                          child: Center (
                                            child: Text(
                                              "save grade",
                                              style: const TextStyle(
                                                  color:  const Color(0xffffffff),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Poppins",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 14.0
                                              ),),
                                          ),
                                        ) ,),
                                    ),
                                  ],
                                )
                              ]),),
                      )
                  );
                },
                  child:// set grade
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 35),
                    child: Center (
                      child:// Frame 91
// Edit grade
                      Text(
                          "Edit grade",
                          style: const TextStyle(
                              color:  const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontStyle:  FontStyle.normal,
                              fontSize: 14.0
                          ),
                      ),
                    ),
                  ) ,),
              ),
            ],
          ),
        )
      ],
    );
  }
}
