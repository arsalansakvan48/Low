import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/TypeFontController.dart';
import '../../../../controller/sizeFontController.dart';

class CardDayPhonePageeachLowyerPropartyHome extends StatelessWidget {
  CardDayPhonePageeachLowyerPropartyHome({
    super.key,
    required this.number,
    required this.day,
    // required this.colors,
  });
  String number;
  String day;
  var colors = Colors.white;

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Container(
      width: 61,
      height: 55,
      decoration: ShapeDecoration(
        color: colors,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            textAlign: TextAlign.center,
            style: fontController.typeselected(
              color: Colors.black,
              fontSize: 16 + sizeFontController.addorNotAdd,
              //   fontFamily: 'Alexandria',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          Text(
            day,
            textAlign: TextAlign.center,
            style: fontController.typeselected(
              color: Colors.black,
              fontSize: 13 + sizeFontController.addorNotAdd,
              //  fontFamily: 'Alexandria',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          )
        ],
      ),
    );
  }
}
