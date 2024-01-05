import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/TypeFontController.dart';
import '../../../../controller/sizeFontController.dart';

class firstPartPayNewPage extends StatelessWidget {
  firstPartPayNewPage({
    super.key,
    required this.text,
  });
  String text;
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Container(
      width: 388,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
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
          text,
          style: fontController.typeselected(
            fontSize: 24 + sizeFontController.addorNotAdd,
            //  fontFamily: 'Alexandria',
          ),
        ),
      ),
    );
  }
}
