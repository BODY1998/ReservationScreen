import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ReservationButton extends StatefulWidget {
  const ReservationButton({Key? key}) : super(key: key);

  @override
  State<ReservationButton> createState() => _ReservationButtonState();
}

class _ReservationButtonState extends State<ReservationButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      color: Colors.purple,
      child: TextButton(
        onPressed: () {
          Fluttertoast.showToast(
              msg: "تم الحجز بنجاح !",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.transparent.withOpacity(0.5),
              textColor: Colors.white,
              fontSize: 16.0);
        },
        child: const Text(
          "قم بالحجز الان",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
