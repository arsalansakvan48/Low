import 'package:get/get.dart';

class LowyerMassageController extends GetxController {
  int selectKliked = 0;
  bool selected1 = true;
  bool selected2 = false;
  changeindex() {
    if (selectKliked == 0) {
      selected1 = true;
      selected2 = false;
    } else if (selectKliked == 1) {
      selected1 = false;
      selected2 = true;
    }
    update();
  }
}
