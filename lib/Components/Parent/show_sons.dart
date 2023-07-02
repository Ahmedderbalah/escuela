import 'package:flutter/material.dart';

import 'add_son.dart';
class Show_Sons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Add_Son('Name of student','the year','assets/images/photo.jpg'),
        Add_Son('Name of student','the year','assets/images/photo.jpg'),
        Add_Son('Name of student','the year','assets/images/photo.jpg'),
        Add_Son('Name of student','the year','assets/images/photo.jpg'),
      ],
    );
  }
}
