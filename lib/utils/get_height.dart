import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GetHeight extends StatefulWidget {
  const GetHeight({Key? key}) : super(key: key);

  @override
  State<GetHeight> createState() => _GetHeightState();
}

class _GetHeightState extends State<GetHeight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Tutorial"),
      ),
      body: Container(
        width: Get.width/2,
        height: Get.height * 0.3,
        // height: MediaQuery.of(context).size.height * 0.3,
        // height: 100,
        color: Colors.redAccent,
        child: Center(child: Text("Click Me"),),
      ),
    );
  }
}
