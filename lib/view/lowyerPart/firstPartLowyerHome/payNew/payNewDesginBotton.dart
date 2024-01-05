import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';

import '../../../../controller/TypeFontController.dart';
import '../../../../controller/sizeFontController.dart';

class payNewDesginBotton extends StatelessWidget {
  const payNewDesginBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Container(
      width: 388,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: grencolor,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Center(
        child: Text(
          'أدفع الأن',
          style: fontController.typeselected(
            color: Colors.white,
            fontSize: 24 + sizeFontController.addorNotAdd,
            // fontFamily: 'Alexandria',
          ),
        ),
      ),
    );
  }
}
