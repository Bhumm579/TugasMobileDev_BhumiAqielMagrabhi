import 'package:flutter/material.dart';
import 'package:flutter_app_01/pages/kalkulator_page.dart';
import 'package:get/get.dart';


// import 'package:flutter_app_01/login_clone.dart';
// import 'package:flutter_app_01/pages/login_clone_page01.dart';
// import 'package:flutter_app_01/kalkulator_page.dart';
// import 'package:flutter_app_01/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: KalkulatorPage(),
      );
    }
}
