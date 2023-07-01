import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GetX Tutorial"),),
      body: const Column(
        children: [
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar(
              "Flutter",
              "This is Mohit's Project",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.white12.withOpacity(0.5),
          mainButton: TextButton(onPressed: (){}, child: const Icon(Icons.ad_units_sharp)));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
