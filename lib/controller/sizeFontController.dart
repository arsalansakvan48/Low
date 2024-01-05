import 'package:get/get.dart';

class SizeFontController extends GetxController {
  double sizeSelected = 0;
  double addorNotAdd = 0;
  sizeControllerMethod(value) {
    sizeSelected = value;
    addorNotAdd = sizeSelected * 0.055;
    /* else if (sizeSelected < 0) {
      addorNotAdd = sizeSelected * 0.05;
    }*/
    update();
  }
}
