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
      appBar: AppBar(
        title: const Text("GetX Tutorial"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Getx Dialog Alert"),
              subtitle: Text("Dialog Alert With GetX"),
              onTap: () {
                Get.defaultDialog(
                    title: "Delete Chat",
                    middleText: "Are you sure you want to delete this chat",
                    confirm: TextButton(onPressed: () {}, child: Text('Ok')),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("Cancel")));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("GetX Bottom Sheet"),
              subtitle: Text("Bottom Sheet With GetX"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text("Light Theme"),
                          onTap: () {
                            print("Tapped Light");
                            Get.changeTheme(
                                ThemeData.light(useMaterial3: true));
                            setState(() {});
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text("Dark Theme"),
                          onTap: () {
                            print("Tapped Dark");
                            Get.changeTheme(ThemeData.dark(useMaterial3: true));
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Get.toNamed('/screen1', arguments: ['Mohit', 'Sharma']);
                // Get.to(ScreenOne(title: "Mohit",));
              },
              child: Text("Go to Next Screen "),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Flutter", "This is Mohit's Project",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.white12.withOpacity(0.5),
              mainButton: TextButton(
                  onPressed: () {}, child: const Icon(Icons.ad_units_sharp)));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
