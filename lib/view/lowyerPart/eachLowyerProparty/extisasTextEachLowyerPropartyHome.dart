import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class extisasTextEachLowyerPropartyHome extends StatelessWidget {
  const extisasTextEachLowyerPropartyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'التخصص',
            textAlign: TextAlign.center,
            style: fontController.typeselected(
              color: Colors.black,
              fontSize: 20 + sizeFontController.addorNotAdd,
              //  fontFamily: 'Alexandria',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Image.asset(
            'asset/reputation 1.png',
            width: 25,
            height: 25,
          ),
        )
      ],
    );
  }
}
