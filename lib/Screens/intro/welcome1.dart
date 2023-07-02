import 'package:flutter/material.dart';
import 'welcome2.dart';


class Welcome1 extends StatefulWidget {
  @override
  _Welcome1State createState() => _Welcome1State();
}

class _Welcome1State extends State<Welcome1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding:EdgeInsets.fromLTRB(60, 200, 40, 30),
            child:
            Image(
              image: NetworkImage(
                'https://i.postimg.cc/HWzny0kz/illustration.png',
              ),
              height: 280.0,
              width: 290.0,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'Numerous free',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
              color: Color(0xff1f1f39),
              fontWeight: FontWeight.bold,
            ),
          ) ,
          const Text(
            'trial courses',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
              color: Color(0xff1f1f39),
              fontWeight: FontWeight.bold,
            ),
          ) ,
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 40, 60, 60),
            child: Container(
              width: 300,
              child:
              const Text(
                'Free courses for you to find your way to learning',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff858597),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.fromLTRB(110, 50, 100, 20),
            child:Container(
              width: 160,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xff1f1f39),
              ),
              child:TextButton(
                  onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Welcome2()),
                );},
                  child: const Text(
                    'next',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.normal
                    ),
                  )
              ),
            ),
          ),

        ],
      ),
    );
  }
}
