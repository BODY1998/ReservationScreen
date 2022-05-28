// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TrainerInfo extends StatelessWidget {
  const TrainerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                maxRadius: 20,
                backgroundColor: Colors.blue,
              ),
            ),
            Text(
              "اسم المدرب",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "معلومات عن المدرب مثلا",
            style: TextStyle(
                color: Colors.grey, fontSize: 18, fontFamily: 'Tajawal'),
          ),
        ),
      ],
    );
  }
}
