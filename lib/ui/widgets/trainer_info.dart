import 'package:flutter/material.dart';
import 'package:flutter_app_test/providers/reservation_provider.dart';
import 'package:provider/provider.dart';

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
                backgroundImage: NetworkImage(context
                    .read<ReservationProvider>()
                    .courseInfo!
                    .trainerImg!),
              ),
            ),
            Text(
              context.read<ReservationProvider>().courseInfo!.trainerName!,
              style: const TextStyle(
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
            context.read<ReservationProvider>().courseInfo!.trainerInfo!,
            style: const TextStyle(
                color: Colors.grey, fontSize: 18, fontFamily: 'Tajawal'),
          ),
        ),
      ],
    );
  }
}
