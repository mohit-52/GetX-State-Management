import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/state_management/example3_controller.dart';
import 'package:learning_getx/state_management/favourite_controller.dart';

class ExampleFourScreen extends StatefulWidget {
  const ExampleFourScreen({Key? key}) : super(key: key);

  @override
  State<ExampleFourScreen> createState() => _ExampleFourScreenState();
}

class _ExampleFourScreenState extends State<ExampleFourScreen> {


  @override
  Widget build(BuildContext context) {
    final FavouriterController controller = Get.put(FavouriterController());
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Example 4 Screen"),
      ),
      body: Card(
        child: ListView.builder(
            itemCount: controller.fruitsList.value.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  if(!controller.tempFruitsList.value.contains(controller.fruitsList.value[index])){
                    controller.addFavourite(controller.fruitsList.value[index].toString());
                  }else{
                    controller.removeFavourite(controller.fruitsList.value[index].toString());
                  }
                print("GetX Build");
                },
                title: Text(controller.fruitsList.value[index].toString()),
                trailing: Obx(() {
                  return Icon(Icons.favorite,
                      color: controller.tempFruitsList.value.contains(controller.fruitsList.value[index].toString())
                          ? Colors.redAccent
                          : Colors.white);
                }),
              );
            }),
      ),
    );
  }
}
