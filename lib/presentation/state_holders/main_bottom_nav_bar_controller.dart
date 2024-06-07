import 'package:get/get.dart';

class MainBottomNavBarController extends GetxController{
  int _selectedIndex=0;

  int get selectedIndex=>_selectedIndex;

  void changedIndex(int index){

    _selectedIndex=index;
    update();

  }

  void backToHome(){
      changedIndex(0);
}


}