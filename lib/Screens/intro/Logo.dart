import 'package:flutter/material.dart';
import 'package:e/Screens/intro/welcome1.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 187, 50, 0),
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: 375,
                    height: 300,
                    child:
                    const Image(
                      image:
                      NetworkImage(
                        'https://i.postimg.cc/nM8kXZ5w/logo.png',
                      ),
                      height: 300.0,
                      width: 375.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 322.0,
                    child:
                    const Text(
                      'escuela',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 90.0,
                        color: Color(0xff34345d),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    child:TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Welcome1()),
                      );
                    },
                        child:
                        const Text(
                          'gooooo ?',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.normal
                          ),
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}