import 'package:flutter/material.dart';


class Description extends StatefulWidget {
  final formkey = GlobalKey<FormState>();
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Padding(
            padding: EdgeInsets.only(top: 5.0, right: 10,left: 10),
            child: Divider(
              color:Color(0xffB71D2D),
              thickness: 2,
            ),
          ),
         const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Dear Students, Kindly find the attached files of Lecture 3 and Lecture 4.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                color: Color(0xff34345d),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:5,left: 10,right: 10,bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xfff2f2f2),
                border: Border.all(color: Color(0xffffffff)),
                borderRadius: BorderRadius.circular(10),),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(8)
                          ),
                          color: Color(0xffe0e0e0)
                      ),
                      child:Image.asset('assets/images/pdf.png', width: 35,height: 35,),

                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'file name.pdf',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff4f4a4a),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Icon(Icons.file_download_outlined, size: 26,color: Color(0xff3e3e3e),),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.visibility_outlined, size: 26,color: Color(0xff3e3e3e),),

                  ],
                ),
              ),
            ),
          ),
        ],
    );
  }
}
