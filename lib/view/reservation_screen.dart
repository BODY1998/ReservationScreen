// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "# موسيقي",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontFamily: 'Tajawal'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "اسم الدوره بالكامل",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 22,
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Icon(Icons.calendar_month_outlined,
                                color: Colors.grey),
                          ),
                          Text(
                            "التاريخ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontFamily: 'Tajawal'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Icon(Icons.push_pin_outlined,
                                color: Colors.grey),
                          ),
                          Text(
                            "عنوان الدوره",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontFamily: 'Tajawal'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  height: 1,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
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
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "معلومات عن المدرب مثلا",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontFamily: 'Tajawal'),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  height: 1,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
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
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "عن الدورةعنعن عنعن عنعنعنعنعنعنعن عن",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontFamily: 'Tajawal',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  height: 1,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "تكلفة الدورة",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "الحجز العادي",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontFamily: 'Tajawal',
                              ),
                            ),
                            Text(
                              "40 SAR",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontFamily: 'Tajawal',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "الحجز المميز",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontFamily: 'Tajawal',
                              ),
                            ),
                            Text(
                              "80 SAR",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontFamily: 'Tajawal',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "الحجز السريع",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontFamily: 'Tajawal',
                              ),
                            ),
                            Text(
                              "120 SAR",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontFamily: 'Tajawal',
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
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
                  child: Text(
                    "قم بالحجز الان",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
