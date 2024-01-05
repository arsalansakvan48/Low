import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';

import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class loginButtonLoginPart extends StatelessWidget {
  const loginButtonLoginPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        width: 242,
        height: 50,
        decoration: BoxDecoration(
          color: grencolor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: Text(
            'تسجيل دخول',
            style: fontController.typeselected(
              color: Colors.white,
              //fontFamily: 'Alexandria',
              fontSize: 16 + sizeFontController.addorNotAdd,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
