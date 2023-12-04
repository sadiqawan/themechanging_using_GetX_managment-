import 'package:get/get.dart';

class themeController extends GetxController{

  RxBool theme = false.obs;
  settheme (bool value)

  {
    theme.value= value;
  }



}