import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class CardextisasTextEachLowyerPropartyHome extends StatelessWidget {
  const CardextisasTextEachLowyerPropartyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            width: 95,
            height: 22,
            decoration: ShapeDecoration(
              color: const Color(0xFF095A17),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 15,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Center(
              child: SizedBox(
                width: 35,
                height: 22,
                child: Text(
                  'تجاري ',
                  style: fontController.typeselected(
                    color: Color(0xFFFFF8F8),
                    fontSize: 12 + sizeFontController.addorNotAdd,
                    // fontFamily: 'Alexandria',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            width: 95,
            height: 22,
            decoration: ShapeDecoration(
              color: const Color(0xFF095A17),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 15,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Center(
              child: SizedBox(
                width: 35,
                height: 22,
                child: Text(
                  'جنائي',
                  style: fontController.typeselected(
                    color: Colors.white,
                    fontSize: 12 + sizeFontController.addorNotAdd,
                    //  fontFamily: 'Alexandria',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 100,
            height: 22,
            decoration: ShapeDecoration(
              color: const Color(0xFF095A17),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 15,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Center(
              child: SizedBox(
                width: 80,
                height: 16,
                child: Center(
                  child: Text(
                    'أحوال شخصية',
                    textAlign: TextAlign.center,
                    style: fontController.typeselected(
                      color: Colors.white,
                      fontSize: 12 + sizeFontController.addorNotAdd,
                      //  fontFamily: 'Alexandria',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
