import 'package:flutter/material.dart';
import 'package:flutter_app_test/services/course_api.dart';
import './ui/reservation_screen.dart';
import 'package:provider/provider.dart';
import './providers/reservation_provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ReservationProvider(CousreApi())),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Reservation App',
        home: ReservationScreen(),
      ),
    );
  }
}
