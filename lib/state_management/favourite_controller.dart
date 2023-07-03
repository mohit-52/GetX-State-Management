import 'package:get/get.dart';

class FavouriterController extends GetxController{
  RxList<String> fruitsList = ['Orange', 'Apple', 'Banana', 'Litchi', 'Mango'].obs;
  RxList<dynamic> tempFruitsList = [].obs;

  addFavourite(String val){
    tempFruitsList.add(val);
  }

  removeFavourite(String val){
    tempFruitsList.remove(val);
  }
}