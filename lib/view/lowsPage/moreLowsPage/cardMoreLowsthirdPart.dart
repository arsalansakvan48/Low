import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';
import '../../color.dart';

class cardMoreLowsthirdPart extends StatelessWidget {
  cardMoreLowsthirdPart({
    super.key,
    required this.text,
    required this.title,
    required this.cardSizeHeight,
  });
  String title;
  String text;
  bool cardSizeHeight;
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(2, 2),
              blurRadius: 4,
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        width: 375,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: grencolor,
              ),
              height: 36,
              width: 375,
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    title,
                    style: fontController.typeselected(
                      color: Colors.white,
                      // fontFamily: 'Alexandria',
                      fontSize: 12 + sizeFontController.addorNotAdd,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  text,
                  textAlign: TextAlign.right,
                  style: fontController.typeselected(
                    color: Colors.black,
                    //   fontFamily: 'Alexandria',
                    fontSize: 12 + sizeFontController.addorNotAdd,
                  ),
                ),
              ),
              height: cardSizeHeight == true ? 330 : 100,
            ),
          ],
        ),
      ),
    );
  }
}
