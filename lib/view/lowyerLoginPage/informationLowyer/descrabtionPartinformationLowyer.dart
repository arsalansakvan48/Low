import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class descrabtionPartinformationLowyer extends StatelessWidget {
  const descrabtionPartinformationLowyer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Container(
      width: MediaQuery.of(context).size.width < 391 ? 325 : 380,
      height: 181,
      decoration: ShapeDecoration(
        color: Color(0xFFD8FFDA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 60,
              height: 56,
              decoration: BoxDecoration(
                color: Color(0xFF095A17),
              ),
              child: Center(
                child: Image.asset(
                  'asset/Vector 44.png',
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 5, right: 2),
                child: TextField(
                  textAlign: TextAlign.center,
                  style: fontController.typeselected(
                      //  fontFamily: 'Alexandria',
                      color: Colors.grey,
                      fontSize: 12),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'أعطنا نبذة تعريفية عنك',
                    hintStyle: fontController.typeselected(
                        //  fontFamily: 'Alexandria',
                        color: Color(0xFFA8A8A8),
                        fontWeight: FontWeight.w400,
                        fontSize: 12 + sizeFontController.addorNotAdd),
                  ),
                  onSubmitted: (value) {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
