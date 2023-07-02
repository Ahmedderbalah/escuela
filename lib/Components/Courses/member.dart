
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Member extends StatelessWidget {
  const Member({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: Icon(
                Icons.person_outlined,
                size: 40,
                color: Color(0xffebebeb),
              ),
              backgroundColor: Color(0xff808080),
            ),
            SizedBox(
              width: 20,
            ),
            // Ahmed Ali Mohamed
            Text(
                "Ahmed Ali Mohamed ",
                style: const TextStyle(
                    color:  const Color(0xff4f4a4a),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    fontStyle:  FontStyle.normal,
                    fontSize: 24.0
                ),
                textAlign: TextAlign.left
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Divider(
            color:Color(0xff808080),
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
