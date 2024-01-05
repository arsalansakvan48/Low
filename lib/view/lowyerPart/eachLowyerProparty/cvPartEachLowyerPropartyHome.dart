import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class cvPartEachLowyerPropartyHome extends StatelessWidget {
  const cvPartEachLowyerPropartyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'السيرة الذاتية',
            style: fontController.typeselected(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.width > 385
                  ? 20 + sizeFontController.addorNotAdd
                  : 15 + sizeFontController.addorNotAdd,
              //  fontFamily: 'Alexandria',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width > 385 ? 28 : 23,
            height: 28,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/resume-and-cv 1.png"),
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }
}
