import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({Key? key}) : super(key: key);

  @override
  State<LanguagesScreen> createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Languages Screen"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () async {
                    Get.updateLocale(Locale('en', 'US'));
                    var sp =  await SharedPreferences.getInstance();
                    sp.setString('language', 'en');
                    sp.setString('country', 'US');
                  },
                  child: Center(
                    child: Text("English"),
                  )),
              OutlinedButton(
                  onPressed: () async {
                    var sp =  await SharedPreferences.getInstance();
                    sp.setString('language', 'hn');
                    sp.setString('country', 'IN');
                    Get.updateLocale(Locale('hn', 'IN'));
                  },
                  child: Center(
                    child: Text("Hindi"),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
