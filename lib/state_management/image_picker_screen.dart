import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/state_management/image_picker_controller.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {

  @override
  Widget build(BuildContext context) {
    final ImagePickerController controller = Get.put(ImagePickerController());
    print("Build");
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Picker Screen"),
        ),
        body: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: controller.imagePath.isNotEmpty ?
                FileImage(File(controller.imagePath.toString())) :
                    null
              ),
              TextButton(onPressed: (){
                controller.getImage();
              }, child: Text("Pick Image"))
            ],
          );
        }));
  }
}
