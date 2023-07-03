import 'package:get/get.dart';

class TimerController extends GetxController{
  RxInt timer = 1.obs ;

  incrementTimer(){
    timer.value++;
    print(timer.value);
  }
}