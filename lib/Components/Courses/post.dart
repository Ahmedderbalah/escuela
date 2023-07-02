import 'package:flutter/material.dart';

class Post extends StatelessWidget {

  String ?title ;
  String ?time;
  Post(String title){ //, String time){
    // this.time=time;
    this.title=title;
  }

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
      child: Container(
        width: (s.width) * 0.9,
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xff34345d)),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 5))
            ]),
        child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
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
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Poppins",
                        color: Color(0xff34345d),
                      ),
                    ),
                    const Text(
                      'Mar.19      3.30 pm',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff4f4a4a),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
