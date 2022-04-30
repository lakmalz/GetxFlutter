
import 'package:get/get.dart';
import 'package:getxflutter/data/local_db/entity_mapper.dart';
import 'package:getxflutter/data/repository/todo_repository.dart';
import 'package:getxflutter/pages/home/home_conroller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => TodoRepository(entityMapper: EntityMapper()));
    Get.lazyPut(() => HomeController());
  }
}