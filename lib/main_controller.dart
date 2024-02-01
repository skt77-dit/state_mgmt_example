import 'package:get/get.dart';

class MainController extends GetxController{
  int counter= 0;
  @override
  void onInit() {
    super.onInit();
  }

  void incrementCounter(){
    counter++;
  }
}