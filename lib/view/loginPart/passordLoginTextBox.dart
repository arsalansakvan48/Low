import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class passordLoginTextBox extends StatelessWidget {
  const passordLoginTextBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        width: 242,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.remove_red_eye_sharp,
                color: Colors.grey.withOpacity(0.6),
                size: 22,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5, right: 2),
                child: TextField(
                  textAlign: TextAlign.right,
                  style: fontController.typeselected(
                      //  fontFamily: 'Alexandria',
                      color: Colors.grey,
                      fontSize: 12 + sizeFontController.addorNotAdd),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'الباسورد',
                    hintStyle: fontController.typeselected(
                        //  fontFamily: 'Alexandria',
                        color: Colors.grey,
                        fontSize: 14 + sizeFontController.addorNotAdd),
                  ),
                  onSubmitted: (value) {},
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.lock_outline_sharp,
                color: Colors.grey,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
