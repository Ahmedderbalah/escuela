import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'welcome2.dart';
import 'welcome4.dart';

class Welcome3 extends StatefulWidget {
  final formkey = GlobalKey<FormState>();
  @override
  _Welcome1State createState() => _Welcome1State();
}

class _Welcome1State extends State<Welcome3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 100, 300, 50),
            child: IconButton(
              iconSize: 30,
              icon: SvgPicture.asset('assets/images/arrow back.svg',
              ),
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Welcome2()),
              );
              },
            ),
          ),
          const Padding(
            padding:EdgeInsets.fromLTRB(60, 0, 40, 30),
            child:
            Image(
              image: NetworkImage(
                'https://i.postimg.cc/q7scswwm/illustration.png',
              ),
              height: 280.0,
              width: 290.0,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'Chat Bot Model',
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
              width: 280,
              child:
              const Text(
                'Ask chatbot about anything you want to know about the school',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
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
                    MaterialPageRoute(builder: (context) => Welcome4()),
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
