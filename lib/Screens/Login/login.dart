import 'package:e/Screens/Teacher/Home_Courses_Teacher.dart';
import 'package:e/Screens/intro/welcome1.dart';
import 'package:flutter/material.dart';

import 'package:e/Screens/Parent/parent_home_screen.dart';

class Login extends StatelessWidget {

  final formkey = GlobalKey<FormState>();
  var email=TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Login ',
                    style:TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff34345d)
                    ),
                  ),
                  const SizedBox(height: 107,),
                  Column(
                    children :[
                      const Text(
                        'user name                                                                                         ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff858597),
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return 'please enter the username ';
                          }
                          return null;
                        },
                        controller: email,
                        cursorColor: Color(0xff34345d) ,
                        style: TextStyle(color: Color(0xff858597),),
                        cursorHeight: 30,
                        decoration: InputDecoration(
                          fillColor:  Color(0xff151718),
                          focusedBorder:OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xff34345d),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color:Color(0xff34345d),
                              width: 2.0,
                            ),
                          ),
                          filled: false,

                          labelStyle: const TextStyle(),
                          hintText: 'user_name',
                          hintStyle: const TextStyle(color: Color(0xff727373)),
                          focusColor: Colors.white,



                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children :
                    [
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 14,
                          color:  Color(0xff727373),
                          fontWeight: FontWeight.bold

                        ),
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return 'please enter your password';
                          }
                          return null;
                        },
                        controller: password,
                        cursorColor: Color(0xff34345d) ,
                        style: TextStyle(color:Color(0xff727373)),
                        cursorHeight: 30,
                        decoration: InputDecoration(
                          fillColor:  Color(0xff151718),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xff34345d),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color:Color(0xff34345d),

                              width: 2.0,
                            ),
                          ),
                          filled: false,
                          labelStyle: const TextStyle(),
                          hintText: '************',
                          hintStyle: const TextStyle(color: Color(0xff727373)),
                          focusColor: Colors.white,
                          suffixIcon: const Icon(Icons.visibility,
                            color: Color(0xff34345d),),
                        ),
                      ),
                    ],
                  ),
                 // SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(150, 0, 0, 60),
                    child: TextButton(onPressed: (){
                      if(formkey.currentState!.validate()){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Welcome1()),
                        );
                      }
                    },
                        child: const Text(
                          'forget password ?',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff858597),
                              fontWeight: FontWeight.normal
                          ),
                        )
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Color(0xff34345d),
                    ),

                    child:TextButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          String emailValue = email.text.trim();
                          String passwordValue = password.text.trim();

                          if (emailValue.isEmpty) {
                            // Show an error message if the email field is empty
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Please enter your email.')),
                            );
                          } else if (emailValue == 'ahmed' && passwordValue == '123') {
                            // Navigate to the next screen if the email and password are valid
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) =>  Parent_HomeScreen()),
                                  (Route<dynamic> route) => false,
                            );
                          } else if  (emailValue == 'ali' && passwordValue == '1234'){
                            // Navigate to the next screen if the email and password are valid
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) =>  Home_Courses_Teacher()),
                                  (Route<dynamic> route) => false,
                            );
                          }
                        }
                      },
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    )

                    /*TextButton(
                        onPressed: (){
                      if(formkey.currentState!.validate()){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Welcome1()),
                        );
                      }
                    },
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.normal
                          ),
                        )
                    ),*/
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}