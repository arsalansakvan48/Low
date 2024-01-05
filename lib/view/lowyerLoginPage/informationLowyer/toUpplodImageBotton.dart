import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class toUpplodImageBotton extends StatelessWidget {
  const toUpplodImageBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 38,
          width: 38,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'asset/selectImage2.png',
                  height: 20,
                  width: 20,
                ),
              ),
              Image.asset(
                'asset/selectImage1.png',
                fit: BoxFit.cover,
                height: 38,
                width: 38,
              ),
            ],
          ),
        ),
        Container(
          width: 154,
          height: 38,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: Border(
              top: BorderSide(width: 1, color: Color(0xFF095A17)),
              right: BorderSide(width: 1, color: Color(0xFF095A17)),
              bottom: BorderSide(width: 1, color: Color(0xFF095A17)),
            ),
          ),
          child: Center(
            child: Text(
              'أضافة صورة شخصية',
              style: fontController.typeselected(
                color: Color(0xFF095A17),
                fontSize: 14 + sizeFontController.addorNotAdd,
                //fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
