import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lowsPage/allLow/allLow.dart';
import 'package:vibration/vibration.dart';
import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';
import '../../lowsPage/lowPage.dart';

class firstparthomepage extends StatelessWidget {
  const firstparthomepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 17,
      ),
      child: Container(
        height: 156,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          reverse: true,
          itemBuilder: (context, index) => cardfirstpart(),
        ),
      ),
    );
  }
}

class cardfirstpart extends StatelessWidget {
  const cardfirstpart({super.key});

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 156,
        width: 144,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: grencolor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'asset/balance-111.png',
              width: 30,
              height: 30,
            ),
            Center(
              child: Container(
                width: 115,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    'قانون ادارة العتبان المقدسة\nالعراقية والمزارات الشيعية\nالشريفة رقم (١٩) لسنة 2005',
                    textAlign: TextAlign.center,
                    style: fontController.typeselected(
                      //  fontFamily: 'Alexandria',
                      fontWeight: FontWeight.w500,
                      fontSize: 8 + sizeFontController.addorNotAdd,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: GestureDetector(
                onTap: () {
                  Get.to(lowPage());
                  Vibration.vibrate(duration: 100);
                },
                child: Container(
                  height: 25,
                  width: 96,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'شاهد التفاصيل',
                      style: fontController.typeselected(
                          //  fontFamily: 'Alexandria',
                          color: grencolor,
                          fontSize: 9 + sizeFontController.addorNotAdd,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
