import 'package:flutter/material.dart';
import 'package:form_ui/leave_mode/leave.dart';
import 'package:form_ui/leave_mode/leave_1.dart';
import 'package:form_ui/leave_mode/leave_2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Leave2(),
    );
  }
}
