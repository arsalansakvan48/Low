import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/TypeFontController.dart';
import '../controller/sizeFontController.dart';

class firstPartEveryPage extends StatelessWidget {
  firstPartEveryPage({
    super.key,
    required this.text,
    required this.color,
    required this.hight,
  });
  String text;
  bool hight;
  var color;
  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
      child: Container(
        height: MediaQuery.of(context).size.width < 385 ? 95 : 100,
        width: MediaQuery.of(context).size.width < 385 ? 300 : 336,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(2, 3),
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                text,
                style: fontController.typeselected(
                  //   fontFamily: 'Alexandria',
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width < 385
                      ? 11 + sizeFontController.addorNotAdd
                      : 14 + sizeFontController.addorNotAdd,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
