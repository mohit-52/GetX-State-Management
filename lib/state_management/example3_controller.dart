import 'package:get/get.dart';

class ExampleThreeController extends GetxController{
  RxBool notification = false.obs;

  setNotification(){
    notification.value = !notification.value;
  }

}