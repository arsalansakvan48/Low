import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class descrabtionPartEachLowyerPropartyHome extends StatelessWidget {
  descrabtionPartEachLowyerPropartyHome({
    super.key,
    required this.text,
  });
  String text;
  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return SizedBox(
      width: 318,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: fontController.typeselected(
          color: Color(0xFF6A6767),
          fontSize: MediaQuery.of(context).size.width > 385
              ? 13 + sizeFontController.addorNotAdd
              : 11 + sizeFontController.addorNotAdd,
          //  fontFamily: 'Alexandria',
          fontWeight: FontWeight.w700,
          height: 0,
        ),
      ),
    );
  }
}
