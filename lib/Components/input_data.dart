import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Text_Form (var control ,String name   ){
  return
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children :[
        Text(
          "${name[0].toUpperCase()}${name.substring(1).toLowerCase()}",
          style: TextStyle(
            fontSize: 14,
            color: Color(0xff858597),
            fontWeight: FontWeight.bold,

          ),
        ),
        SizedBox(height: 10,),
        TextFormField(
          validator: (value){
            if(value!.isEmpty)
            {
              return 'please enter the user$name ';
            }
            return null;
          },
          controller: control,
          cursorColor: Color(0xff3d5cff) ,
          style: TextStyle(color: Color(0xff858597),),
          cursorHeight: 30,
          decoration: InputDecoration(
            fillColor:  Color(0xff151718),
            focusedBorder:OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff3d5cff),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color:Color(0xff3d5cff),
                width: 2.0,
              ),
            ),
            filled: false,

            labelStyle: TextStyle(),
            hintText: '$name',
            hintStyle: TextStyle(color: Color(0xff727373)),
            focusColor: Colors.white,



          ),
        ),
      ],
    );
}
Widget Text_Form_password (var control  ){
  return
    Column(crossAxisAlignment: CrossAxisAlignment.start,
      children :
      [
        Text(
          'Password',
          style: TextStyle(
              fontSize: 14,
              color:  Color(0xff727373),
              fontWeight: FontWeight.bold

          ),
        ),
        SizedBox(height: 10,),
        TextFormField(
          validator: (value){
            if(value!.isEmpty)
            {
              return 'please enter your password';
            }
            return null;
          },
          controller: control,
          cursorColor: Color(0xff3d5cff) ,
          style: TextStyle(color:Color(0xff727373)),
          cursorHeight: 30,
          decoration: InputDecoration(
            fillColor:  Color(0xff151718),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff3d5cff),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color:Color(0xff3d5cff),

                width: 2.0,
              ),
            ),
            filled: false,
            labelStyle: TextStyle(),
            hintText: '************',
            hintStyle: TextStyle(color: Color(0xff727373)),
            focusColor: Colors.white,

            suffixIcon: IconButton( onPressed: (){},
              icon: Icon(Icons.visibility,
                color: Color(0xff3d5cff),),
            ),
          ),
        ),
      ],
    );
}
