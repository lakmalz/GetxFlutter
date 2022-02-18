import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getxflutter/routes/app_routes.dart';
import 'package:getxflutter/pages/welcome/welcome_controller.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OutlinedButton(
                onPressed: () {
                  Get.toNamed(Routes.HOME);
                },
                child: const Text('Outlined button'),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 5.0, color: Colors.blue),
                )),
          ],
        ),
      ),
    );
  }
}
