import 'package:get/get.dart';
import 'package:getxflutter/pages/welcome/welcome_controller.dart';

class WelcomeBinding extends Bindings{

  @override
  void dependencies() {
    Get.put(WelcomeController());
  }
}