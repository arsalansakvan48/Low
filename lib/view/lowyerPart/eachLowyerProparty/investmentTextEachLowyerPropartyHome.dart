import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class investmentTextEachLowyerPropartyHome extends StatelessWidget {
  const investmentTextEachLowyerPropartyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'أختر طريقة الأستشارة',
          style: fontController.typeselected(
            color: Colors.black,
            fontSize: 20 + sizeFontController.addorNotAdd,
            // fontFamily: 'Alexandria',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/interview 1.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
