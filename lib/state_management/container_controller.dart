import 'package:get/get.dart';

class ContainerController extends GetxController{
  RxDouble opacity = 0.5.obs;

  setOpacity(double val){
    opacity.value = val;
  }

}