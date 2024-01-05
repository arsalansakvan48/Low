import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/controller/sizeFontController.dart';
import 'package:vibration/vibration.dart';
import '../../controller/TypeFontController.dart';

class homeTopDrawerPage extends StatelessWidget {
  const homeTopDrawerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //  HomeController homeController = Get.put(HomeController());
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return GestureDetector(
      onTap: () {
        Get.back();
        Vibration.vibrate(duration: 100);
      },
      child: Container(
        width: 327,
        height: 62,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
              ),
              child: Text(
                'الرئيسية',
                style: fontController.typeselected(
                  color: Color(0xFF095A17),
                  fontSize: 23 + sizeFontController.addorNotAdd,
                  //fontFamily: 'Alexandria',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 15, top: 5),
              child: Image.asset(
                'asset/home111.png',
                height: 32,
                width: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
