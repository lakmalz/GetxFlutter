import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxflutter/routes/app_pages.dart';
import 'package:getxflutter/pages/welcome/welcome_screen.dart';
import 'package:getxflutter/services/init_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
    );
  }
}


