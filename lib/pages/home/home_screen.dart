import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getxflutter/pages/home/home_conroller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Todo App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Obx(() => ListView(
            children: [
              TextField(
                controller: controller.eventTextController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Event',
                      hintText: 'Enter Todo event',
                    ),
                    onChanged: (text) {
                      // controller.eventValue(text);
                    }),
              
              ElevatedButton(
                onPressed: () => controller.addEvent(controller.eventTextController.text),
                child: const Text('Add Event'),
              ),
              const SizedBox(height: 36,),
              const Text('Event List', style: TextStyle(fontSize: 18),),
              ListView.separated(
                  separatorBuilder: (_, idx) {
                    return const Divider();
                  },
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.todoList.length,
                  itemBuilder: (_, idx) {
                    final item = controller.todoList.elementAt(idx);
                    return Text(item.title ?? '');
                  },
                ),
              
            ],
          ),),
        ),
      ),
    );
  }
}
