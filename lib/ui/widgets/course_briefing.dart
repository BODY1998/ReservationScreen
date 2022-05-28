// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CourseBriefing extends StatelessWidget {
  const CourseBriefing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "عن الدورة",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "معلومات عن الدورة",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontFamily: 'Tajawal',
            ),
          ),
        ),
      ],
    );
  }
}
