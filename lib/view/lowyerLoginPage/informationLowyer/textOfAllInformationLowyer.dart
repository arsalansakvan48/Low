import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class textOfAllInformationLowyer extends StatelessWidget {
  textOfAllInformationLowyer({
    super.key,
    required this.text,
  });
  String text;
  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Padding(
      padding: const EdgeInsets.only(right: 25, bottom: 5),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          text,
          style: fontController.typeselected(
            color: Color(0xFF095A17),
            fontSize: 13 + sizeFontController.addorNotAdd,
            //  fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
    );
  }
}
