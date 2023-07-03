import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;



  void loginApi(String email, String pass) async {
    loading.value = true;
    try {
      final response = await http.post(Uri.parse("https://reqres.in/api/login"), body: {
        'email': email,
        'password': pass,
      });

      if (response.statusCode == 200) {
        loading.value = false;
        var data = jsonDecode(response.body);
        print(response.statusCode.toString());
        print(data);
        Get.snackbar("Login Successful", data.toString());

      } else {
        loading.value = false;

        Get.snackbar("Login Failed", response.statusCode.toString());
        // print(emailController.va)

      }
    } catch (e) {
      loading.value = false;
      Get.snackbar("Error!", e.toString());
    }
  }
}
