import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/utils/screen_two.dart';
class ScreenOne extends StatefulWidget {
  var title;
   ScreenOne({Key? key, this.title = ''}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Screen 1 "+ Get.arguments[1]),
      ),
      body: Center(child: TextButton(onPressed: () {
        Get.to(ScreenTwo());

      },
      child: Text("GO to Screen 2"),),)
    );
  }
}
