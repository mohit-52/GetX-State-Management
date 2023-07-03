import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/login_api/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen"), centerTitle: true,),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                hintText: "Email"
              ),),
          TextFormField(
            controller: controller.passwordController.value,
            decoration: InputDecoration(
                hintText: "Password"
            ),),
            SizedBox(height: 50,),
            Obx(() {
              return InkWell(
                onTap: (){
                  controller.loginApi(controller.emailController.value.text.toString(), controller.passwordController.value.text.toString());
                },
                child: Container(
                  height: 45,
                  color: Colors.teal,
                  child: Center(child: controller.loading.value ? CircularProgressIndicator() : Text("Login"),),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
