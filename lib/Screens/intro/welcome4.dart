import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'welcome2.dart';
import 'package:e/Screens/Login//Login.dart';

class Welcome4 extends StatefulWidget {
  const Welcome4({super.key});

  @override
  State<Welcome4> createState() => _Welcome4State();
}

class _Welcome4State extends State<Welcome4> {
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
                'https://i.postimg.cc/VNKB6RF2/illustration.png',
              ),
              height: 280.0,
              width: 290.0,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'A good plan of study',
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
                'Study according to the study plan, make study more motivated',
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
                    MaterialPageRoute(builder: (context) => Login()),
                  );},
                  child: const Text(
                    'Log in ',
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

