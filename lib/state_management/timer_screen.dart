import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_getx/state_management/timer_controller.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}


class _TimerScreenState extends State<TimerScreen> {
  final TimerController controller = Get.put(TimerController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer.periodic(Duration(seconds: 5), (timer) {
    //   x++;
    //   setState(() {
    //
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(title: Text("Timer"),),
      body: Column(
        children: [
          Center(child: Obx((){
            print("Get X Build");
            return Text(controller.timer.toString(), style: TextStyle(fontSize: 30),);
          })),
          // Expanded(
          //   child: ListView.builder(
          //       itemCount: 100,
          //       itemBuilder: (context, index) {
          //     return Text(x.toString());
          //   }),
          // )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incrementTimer();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
