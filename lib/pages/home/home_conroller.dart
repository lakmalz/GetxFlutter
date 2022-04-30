import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getxflutter/data/model/todo_model.dart';
import 'package:getxflutter/data/repository/todo_repository.dart';

class HomeController extends GetxController {
  final TodoRepository _todoRepository = Get.find();
  final TextEditingController eventTextController = TextEditingController();
  final RxList<TodoModel> todoList = RxList();

  @override
  void onReady() async {
    refreshTodoList();
    super.onReady();
  }

  addEvent(String eventName) async {
    final todoModel = TodoModel(title: eventName);
    final int i = await _todoRepository.insert(todoModel);
    eventTextController.text = '';
    if (i != 0) {
      refreshTodoList();
    }
  }

  refreshTodoList() async {
    final resultAll = await _todoRepository.getAll();
    todoList(resultAll);
  }
}
