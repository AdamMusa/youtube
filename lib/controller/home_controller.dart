

import 'package:get/get.dart';

class HomeController extends GetxController{
  var selectedIndex = 0.obs;


  swither(value){
    selectedIndex.value = value;
  }
}