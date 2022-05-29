import 'package:flutter/material.dart';
import 'package:flutter_app_test/providers/reservation_provider.dart';
import 'package:provider/provider.dart';

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
            context.read<ReservationProvider>().courseInfo!.interest!,
            style: const TextStyle(
                color: Colors.grey, fontSize: 18, fontFamily: 'Tajawal'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            context.read<ReservationProvider>().courseInfo!.title!,
            style: const TextStyle(
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
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Icon(Icons.calendar_month_outlined, color: Colors.grey),
              ),
              Text(
                context.read<ReservationProvider>().courseInfo!.date.toString(),
                style: const TextStyle(
                    color: Colors.grey, fontSize: 18, fontFamily: 'Tajawal'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Icon(Icons.push_pin_outlined, color: Colors.grey),
              ),
              Text(
                context.read<ReservationProvider>().courseInfo!.address!,
                style: const TextStyle(
                    color: Colors.grey, fontSize: 18, fontFamily: 'Tajawal'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
