import 'package:flutter/material.dart';
import 'package:flutter_app_test/providers/reservation_provider.dart';
import 'package:provider/provider.dart';

class CourseBriefing extends StatelessWidget {
  const CourseBriefing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
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
            context.read<ReservationProvider>().courseInfo!.occasionDetail!,
            style: const TextStyle(
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
