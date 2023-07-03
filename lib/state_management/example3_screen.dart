import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_getx/state_management/example3_controller.dart';

class ExampleThreeScreen extends StatefulWidget {
  const ExampleThreeScreen({Key? key}) : super(key: key);

  @override
  State<ExampleThreeScreen> createState() => _ExampleThreeScreenState();
}

class _ExampleThreeScreenState extends State<ExampleThreeScreen> {
  @override
  Widget build(BuildContext context) {
    final ExampleThreeController controller = Get.put(ExampleThreeController());
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Example 3 Screen"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Notifications"),
          Obx(() {
            return Switch(
                value: controller.notification.value,
                onChanged: (value) {
                  controller.setNotification();
                  print("GetX Build");
                });
          })
        ],
      ),
    );
  }
}
