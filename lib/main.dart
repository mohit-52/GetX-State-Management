import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/screen_one.dart';
import 'package:learning_getx/screen_two.dart';
import 'get_height.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        // useMaterial3: false,
      ),
      home:  GetHeight(),
      getPages: [
        GetPage(name: '/', page: ()=> HomeScreen()),
        GetPage(name: '/screen1', page: ()=> ScreenOne()),
        GetPage(name: '/screen2', page: ()=> ScreenTwo()),
      ],
    );
  }
}


