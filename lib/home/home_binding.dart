
import 'package:get/get.dart';
import 'package:getxflutter/home/home_conroller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}