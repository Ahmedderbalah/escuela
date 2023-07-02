import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../Screens/Teacher/Courses_Screen_Teacher.dart';

class Create_Material extends StatelessWidget {

  final formkey = GlobalKey<FormState>();
  var title=TextEditingController();
  var instruction=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
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
                    MaterialPageRoute(builder: (context) => Courses_Screen_Teacher(0)),
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
                      'Create',
                      style: TextStyle(
                        fontSize: 32,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Material',
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
      body:  SingleChildScrollView(
        child: Column(
          children: [
            // assign button /////////////
            Padding(
              padding: const EdgeInsets.only(top: 10.0 , right: 20),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color(0xff3abf38),
                    ),

                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextButton(onPressed: (){
                        if(formkey.currentState!.validate()){


                        }
                      },
                          child: Text(
                            'Assign',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffffffff),
                              //fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color:Color(0xff7a808080),),
                  borderRadius: BorderRadius.circular(20),
                ),
                  //
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                            validator: (value){
                              if(value!.isEmpty)
                              {
                                return 'please enter the title ';
                              }
                              return null;
                            },
                            controller: title,
                            cursorColor: Color(0xff3eaa97) ,
                            style: TextStyle(color: Color(0xff3eaa97),),
                            cursorHeight: 30,
                            decoration: InputDecoration(

                              fillColor: Color(0xffd9d9d9),
                              //Color(0xffd9d9d9),
                              focusedBorder:OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffd9d9d9),

                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Color(0xffd9d9d9),
                                )

                              ),
                              filled: true,
                              hintText: 'Title',
                              hintStyle: TextStyle(
                                  color: Color(0xff3eaa97),
                              //fontWeight: FontWeight.bold,
                              fontSize: 25),
                              focusColor: Colors.white,



                            ),
                          ),


                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(  color: Color(0xff3eaa97),
                         // height:30,
                          endIndent: 9,
                          indent: 9,
                            thickness: 3,
                          ),
                        ),

                        TextFormField(
                          validator: (value){
                            if(value!.isEmpty)
                            {
                              return 'please enter the instruction ';
                            }
                            return null;
                          },
                          controller: instruction,
                          cursorColor: Color(0xff3eaa97) ,
                          style: TextStyle(color: Color(0xff3eaa97),),
                          cursorHeight: 30,

                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 220),
                            fillColor: Color(0xffd9d9d9),
                            focusedBorder:OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffd9d9d9),),
                                borderRadius: BorderRadius.circular(10),
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Color(0xffd9d9d9),)
                              ),
                            filled: true,
                            hintText: ' Instructions',
                            hintStyle: TextStyle(
                                color: Color(0xff3eaa97),
                            //fontWeight: FontWeight.bold,
                            fontSize: 25),
                            focusColor: Colors.white,


                          ),

                        ),

                        SizedBox(height: 30,),
                        Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xff3eaa97),
                          ),

                          child:TextButton(onPressed: (){
                            if(formkey.currentState!.validate()){


                            }
                          },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.file_upload_outlined , size: 50 ,color: Color(0xffffffff),),
                                  SizedBox(
                                    width:15,
                                  ),
                                  Text(
                                    'Upload File',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
