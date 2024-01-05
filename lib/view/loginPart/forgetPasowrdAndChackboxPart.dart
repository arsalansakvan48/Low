import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';
import 'package:vibration/vibration.dart';

import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class forgetPasowrdAndChackboxPart extends StatelessWidget {
  const forgetPasowrdAndChackboxPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (t) {
                    Vibration.vibrate(duration: 100);
                  },
                  activeColor: grencolor,
                ),
                Text(
                  'تذكرني',
                  style: fontController.typeselected(
                    fontSize: 14 + sizeFontController.addorNotAdd,
                    fontWeight: FontWeight.bold,
                    //fontFamily: 'Alexandria',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'هل نسيت كلمة السر؟',
              style: fontController.typeselected(
                fontSize: 14 + sizeFontController.addorNotAdd,
                fontWeight: FontWeight.bold,
                // fontFamily: 'Alexandria',
              ),
            ),
            TextButton(
              onPressed: () {
                Vibration.vibrate(duration: 100);
              },
              child: Text(
                'اضغط هنا',
                style: fontController.typeselected(
                  fontSize: 14 + sizeFontController.addorNotAdd,
                  fontWeight: FontWeight.bold,
                  // fontFamily: 'Alexandria',
                  color: grencolor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
