import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Account extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Account> {

  @override
  Widget build(BuildContext context) {
    return

      Container(
        color: Color(0xffffffff),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children:[
                CircleAvatar(
                  backgroundImage:AssetImage(('assets/images/photo.jpg')
                  ),
                  maxRadius: 100,
                  // backgroundColor: Colors.indigo,
                ),
                SizedBox(height: 18,),
                Text(' Ahmed Sayed',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff1f1f39),
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(' Flutter developer ',
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff1f1f39),
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text('@as3599',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff1f1f39),
                      fontWeight: FontWeight.normal
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10 , top: 50 , right: 15),
                  child: ListTile(

                    onTap: (){},
                    title: Text('Personal Info',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff1f1f39),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff3d5cff),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10 , top: 21 , right: 15),
                  child: ListTile(

                    onTap: (){},
                    title: Text('Edit Account',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff1f1f39),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff3d5cff),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10 , top: 21 , right: 15),
                  child: ListTile(

                    onTap: (){},
                    title: Text('Setting And Privacy',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff1f1f39),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff3d5cff),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10 , top: 21 , right: 15),
                  child: ListTile(

                    onTap: (){},
                    title: Text('Help',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff1f1f39),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff3d5cff),
                    ),

                  ),
                ),

              ],
            ),
          ),

        ),
      );
  }
}
