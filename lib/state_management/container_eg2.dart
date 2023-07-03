import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_getx/state_management/container_controller.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  final ContainerController controller = Get.put(ContainerController());
  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(title: Text("Container Screen"), centerTitle: true,),
      body: Column(
        children: [
          Obx(() {
            return Container(
              height: 200,
              color: Colors.redAccent.withOpacity(controller.opacity.value),
            );
          }),
          Obx(() {
            return  Slider(value: controller.opacity.value, onChanged: (value){
              print("GetX Build");
              controller.setOpacity(value);

            });
          }),

        ],
      ),
    );
  }
}
