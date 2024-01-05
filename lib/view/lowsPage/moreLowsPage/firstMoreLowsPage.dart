import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/view/color.dart';
import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class firstMoreLowsPage extends StatelessWidget {
  const firstMoreLowsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Container(
      height: 40,
      child: Center(
        child: Container(
          height: 40,
          width: 346,
          color: grencolor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'asset/balance-2.png',
                width: 30,
                height: 30,
              ),
              Text(
                'قانون ديوان الوقف ألسني العراقى رقم 56 لسنة 2012',
                style: fontController.typeselected(
                  color: background,
                  fontSize: 9.5 + sizeFontController.addorNotAdd,
                  //   fontFamily: 'Alexandria',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'asset/balance-2.png',
                width: 30,
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
