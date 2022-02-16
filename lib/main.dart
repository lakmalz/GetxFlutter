import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxflutter/routes/app_pages.dart';
import 'package:getxflutter/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.routes,
      home: const WelcomeScreen(),
    );
  }
}


