// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            "# موسيقي",
            style: TextStyle(
                color: Colors.grey, fontSize: 18, fontFamily: 'Tajawal'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            "اسم الدوره بالكامل",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 22,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(Icons.calendar_month_outlined, color: Colors.grey),
              ),
              Text(
                "التاريخ",
                style: TextStyle(
                    color: Colors.grey, fontSize: 18, fontFamily: 'Tajawal'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(Icons.push_pin_outlined, color: Colors.grey),
              ),
              Text(
                "عنوان الدوره",
                style: TextStyle(
                    color: Colors.grey, fontSize: 18, fontFamily: 'Tajawal'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
/*
 

*/