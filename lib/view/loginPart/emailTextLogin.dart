import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class emailTextLogin extends StatelessWidget {
  const emailTextLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5, right: 2),
                child: TextField(
                  textAlign: TextAlign.right,
                  style: fontController.typeselected(
                      //  fontFamily: 'Alexandria',
                      color: Colors.grey,
                      fontSize: 12),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'البريد الالكتروني او رقم الهاتف',
                    hintStyle: fontController.typeselected(
                        // fontFamily: 'Alexandria',
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
                Icons.search,
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
