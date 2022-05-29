import 'package:flutter/material.dart';
import 'package:flutter_app_test/providers/reservation_provider.dart';
import 'package:provider/provider.dart';
import './widgets/course_briefing.dart';
import './widgets/course_payment.dart';
import './widgets/cousre_info.dart';
import './widgets/reservation_button.dart';
import './widgets/trainer_info.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  @override
  Widget build(BuildContext context) {
    final courseInfoProvider = context.watch<ReservationProvider>().courseInfo;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {
                // HERE THE FUNCTION OF BUTTON
              },
              icon: const Icon(Icons.share_outlined),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                // HERE THE FUCTION OF BUTTON
              },
              icon: const Icon(Icons.star_border_outlined),
              color: Colors.white,
            ),
          ],
        ),
        body: context.watch<ReservationProvider>().isLoadingData
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : courseInfoProvider == null
                ? const Center(
                    child: Text("server error"),
                  )
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: Image(
                              image: NetworkImage(
                            context
                                .read<ReservationProvider>()
                                .courseInfo!
                                .img![1],
                          )),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: CourseInfo(),
                        ),
                        const Divider(),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: TrainerInfo(),
                        ),
                        const Divider(),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: CourseBriefing(),
                        ),
                        const Divider(),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: CoursePayment(),
                        ),
                        const ReservationButton(),
                      ],
                    ),
                  ),
      ),
    );
  }
}
