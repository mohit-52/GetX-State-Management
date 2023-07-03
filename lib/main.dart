import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/languages.dart';
import 'package:learning_getx/languages_screen.dart';
import 'package:learning_getx/screen_one.dart';
import 'package:learning_getx/screen_two.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';

void main()  {
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
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      // locale: Locale(getLanguage().toString(), getCountry().toString() ),
      // fallbackLocale: Locale(getLanguage().toString(), getCountry().toString() ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        // useMaterial3: false,
      ),
      home:  LanguagesScreen(),
      getPages: [
        GetPage(name: '/', page: ()=> HomeScreen()),
        GetPage(name: '/screen1', page: ()=> ScreenOne()),
        GetPage(name: '/screen2', page: ()=> ScreenTwo()),
      ],
    );
  }
}

// Future<String?> getLanguage() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   // Save the language
//   return prefs.getString('language') as String;
// }
// Future<String?> getCountry() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   // Save the language
//   return prefs.getString('country') as String;
// }

