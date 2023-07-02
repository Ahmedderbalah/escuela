import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'welcome1.dart';
import 'welcome3.dart';

class Welcome2 extends StatefulWidget {
  @override
  _Welcome1State createState() => _Welcome1State();
}

class _Welcome1State extends State<Welcome2> {
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
                MaterialPageRoute(builder: (context) => Welcome1()),
              );
              },
            ),
          ),
          const Padding(
            padding:EdgeInsets.fromLTRB(60, 0, 40, 30),
            child:
            Image(
              image: NetworkImage(
                'https://i.postimg.cc/qv0vtGtB/illustration.png',
              ),
              height: 280.0,
              width: 290.0,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'Quick and easy',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
              color: Color(0xff1f1f39),
              fontWeight: FontWeight.bold,
            ),
          ) ,
          const Text(
            'learning',
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
                'Easy and fast learning at any time to help you improve various skills',
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
                    MaterialPageRoute(builder: (context) => Welcome3()),
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
