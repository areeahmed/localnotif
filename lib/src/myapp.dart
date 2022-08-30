import 'package:flutter/material.dart';
import 'package:localnotif/src/screens/local_notification_screen.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocalNotificationScreen(),
    );
  }
}
