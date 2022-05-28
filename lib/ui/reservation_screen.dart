// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import './widgets/cousre_info.dart';
import './widgets/trainer_info.dart';
import './widgets/course_briefing.dart';
import './widgets/course_payment.dart';
import './widgets/reservation_button.dart';

class ReservationScreen extends StatelessWidget {
  final CourseInfo _courseInfo = CourseInfo();
  final TrainerInfo _trainerInfo = TrainerInfo();
  final CourseBriefing _courseBriefing = CourseBriefing();
  final CoursePayment _coursePayment = CoursePayment();
  final ReservationButton _reservationButton = ReservationButton();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share_outlined),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.star_border_outlined),
              color: Colors.white,
            ),
          ],
        ),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: _courseInfo,
                ),
                Container(
                  color: Colors.grey[200],
                  height: 1,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: _trainerInfo,
                ),
                Container(
                  color: Colors.grey[200],
                  height: 1,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: _courseBriefing,
                ),
                Container(
                  color: Colors.grey[200],
                  height: 1,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: _coursePayment,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _reservationButton,
            ),
          ],
        ),
      ),
    );
  }
}
