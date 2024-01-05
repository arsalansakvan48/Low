import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class meddenAllLastNewsPage extends StatelessWidget {
  const meddenAllLastNewsPage({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: fontController.typeselected(
              color: Color(0xFF095A17),
              fontSize: 16 + sizeFontController.addorNotAdd,
              //   fontFamily: 'Alexandria',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
          child: Text(
            subtitle,
            textAlign: TextAlign.right,
            style: fontController.typeselected(
              color: Colors.black,
              fontSize: 10 + sizeFontController.addorNotAdd,
              //  fontFamily: 'Alexandria',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        )
      ],
    );
  }
}
