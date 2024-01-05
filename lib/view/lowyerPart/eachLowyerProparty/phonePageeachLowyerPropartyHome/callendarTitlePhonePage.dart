import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/TypeFontController.dart';
import '../../../../controller/sizeFontController.dart';

class callendarTitle extends StatelessWidget {
  callendarTitle({
    super.key,
    required this.text,
    required this.icons,
  });
  String text;
  var icons;
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(width: 24, height: 24, child: icons),
          Text(
            text,
            style: fontController.typeselected(
              color: Color(0xFF514F4F),
              fontSize: 20 + sizeFontController.addorNotAdd,
              //  fontFamily: 'Alexandria',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
