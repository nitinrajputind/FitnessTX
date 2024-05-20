import 'package:fitnestx/common/colo_extension.dart';
import 'package:fitnestx/view/on_boarding/started_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitnessTx',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Tcolor.primaryColor1,
          useMaterial3: true,
          fontFamily: "Poppins"),
      home: const StartedView(),
    );
  }
}
