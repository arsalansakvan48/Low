import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/TypeFontController.dart';
import '../../../../../controller/sizeFontController.dart';

class textTopvizaPayPageHome extends StatelessWidget {
  const textTopvizaPayPageHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'طريقة الدفع عبر بطاقة بنكية',
            style: fontController.typeselected(
              color: Colors.black,
              // fontFamily: 'Alexandria',
              fontSize: 20 + sizeFontController.addorNotAdd,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 35, top: 10),
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              'ادخل بيانات البطاقة أدناه',
              style: fontController.typeselected(
                color: Colors.black.withOpacity(0.6),
                //  fontFamily: 'Alexandria',
                fontSize: 16 + sizeFontController.addorNotAdd,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 35),
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              'او من خلال',
              style: fontController.typeselected(
                color: Colors.black,
                //  fontFamily: 'Alexandria',
              ),
            ),
          ),
        )
      ],
    );
  }
}
