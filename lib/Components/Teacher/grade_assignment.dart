import 'package:e/Screens/Teacher/Assignments.dart';
import 'package:flutter/material.dart';

class Grede_Assignment extends StatelessWidget {

  List ?AD ;
  int ?sid ;
  int ?aid;

  Grede_Assignment(List l , int sid , int aid ){
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
        const Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: Divider(
            color:Color(0xffdadada),
            thickness: 2,
          ),
        ),
        const Text(
          'Dear Students, Kindly find the attached files of Lecture 3 and Lecture 4.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            color: Color(0xff34345d),
          ),
        ),
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 3.0),
         child: Container(
    decoration: BoxDecoration(
    color: const Color(0xfff2f2f2),
    border: Border.all(color: const Color(0xffffffff)),
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
                     decoration: const BoxDecoration(
                         borderRadius: BorderRadius.all(
                             Radius.circular(8)
                         ),
                       color: Color(0xffe0e0e0)
                     ),
                   child:Image.asset('assets/images/pdf.png', width: 35,height: 35,),

                 ),
                 const SizedBox(
                   width: 5,
                 ),
                 const Text(
                   'file name.pdf',
                   style: TextStyle(
                     fontSize: 20,
                     color: Color(0xff4f4a4a),
                   ),
                 ),
                 const SizedBox(
                   width: 90,
                 ),
                 const Icon(Icons.file_download_outlined, size: 26,color: Color(0xff3e3e3e),),
                 const SizedBox(
                   width: 10,
                 ),
                 const Icon(Icons.visibility_outlined, size: 26,color: Color(0xff3e3e3e),),

               ],
             ),
           ),
         ),
       ),
        const Divider(
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
                    color: const Color(0xff3eaa97) ,
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
                                const Text(
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
                                    cursorColor: const Color(0xff3eaa97) ,
                                    style: const TextStyle(color: Color(0xff3eaa97),),
                                    cursorHeight: 30,
                                    decoration: InputDecoration(

                                      fillColor: const Color(0xfff2f2f2),
                                      //Color(0xffd9d9d9),
                                      focusedBorder:OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xfff2f2f2),

                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                          borderSide: const BorderSide(
                                            color: Color(0xfff2f2f2),
                                          )

                                      ),
                                      filled: true,
                                      hintText: '0-10',
                                      hintStyle: const TextStyle(
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
                                          color: const Color(0xff3eaa97) ,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: MaterialButton(onPressed: (){
                                        Navigator.pop(context);
                                      },
                                        child:// set grade
                                        const Padding(
                                          padding: EdgeInsets.symmetric(vertical: 2 , horizontal: 22),
                                          child: Center(
                                            child: Text(
                                              "cancel",
                                              style: TextStyle(
                                                  color:  Color(0xff4f4a4a),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Poppins",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 14.0
                                              ),
                                            ),
                                          ),
                                        ) ,),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xff3eaa97) ,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xff3eaa97),
                                      ),
                                      child: MaterialButton(onPressed: (){
                                        if(formkey.currentState!.validate()){
                                          AD![aid!]['grades'][sid!]=grade.text;
                                          AD![aid!]['IsSaved'][sid!]=1;
                                          Navigator.pushAndRemoveUntil(
                                            context, MaterialPageRoute(builder: (context) =>
                                          Assignments(AD! , aid!)),
                                                (Route<dynamic> route) => false,//
                                          );
                                        }
                                      },
                                        child:// set grade
                                        const Padding(
                                          padding: EdgeInsets.symmetric(vertical: 2 , horizontal: 22),
                                          child: Center (
                                            child: Text(
                                              "save grade",
                                              style: TextStyle(
                                                  color:  Color(0xffffffff),
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
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5 , horizontal: 35),
                    child: Center(
                      child: Text(
                        "set grade",
                        style: TextStyle(
                            color:  Color(0xff4f4a4a),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontStyle:  FontStyle.normal,
                            fontSize: 14.0
                        ),
                      ),
                    ),
                  ) ,),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff3eaa97) ,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff3eaa97),
                ),
                child: MaterialButton(onPressed: (){
                  AD![aid!]['grades'][sid!]='10';
                  AD![aid!]['IsSaved'][sid!]=1;
                  Navigator.pushAndRemoveUntil(
                    context, MaterialPageRoute(builder: (context) =>
                  Assignments(AD! , aid!)),
                        (Route<dynamic> route) => false,//
                  );
                },
                  child:// set grade
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5 , horizontal: 35),
                    child: Center (
                      child: Text(
                        "Full grade",
                        style: TextStyle(
                            color:  Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontStyle:  FontStyle.normal,
                            fontSize: 14.0
                        ),),
                    ),
                  ) ,),
              ),
             /* Container(
                decoration: BoxDecoration(
                  border: Border.all(
                  color: const Color(0xff3eaa97) ,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: MaterialButton(onPressed: (){},
                  child:// set grade
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5 , horizontal: 35),
                    child: Center(
                      child: Text(
                          "set grade",
                          style: TextStyle(
                              color:  Color(0xff4f4a4a),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontStyle:  FontStyle.normal,
                              fontSize: 14.0
                          ),
                      ),
                    ),
                  ) ,),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff3eaa97) ,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff3eaa97),
                ),
                child: MaterialButton(onPressed: (){},
                  child:// set grade
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5 , horizontal: 35),
                    child: Center (
                      child: Text(
                          "Full grade",
                          style: TextStyle(
                              color:  Color(0xffffffff),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontStyle:  FontStyle.normal,
                              fontSize: 14.0
                          ),),
                    ),
                  ) ,),
              ),*/
            ],
          ),
        ),
      ],
    );
  }
}
