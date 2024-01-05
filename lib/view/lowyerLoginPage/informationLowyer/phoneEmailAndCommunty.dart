import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class phoneEmailAndCommunty extends StatelessWidget {
  phoneEmailAndCommunty({
    super.key,
    required this.hedder,
    required this.icon,
  });
  String hedder;
  var icon;
  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Container(
      width: MediaQuery.of(context).size.width < 391 ? 333 : 381,
      height: 47,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF095A17)),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 3, right: 2),
              child: TextField(
                textAlign: TextAlign.center,
                style: fontController.typeselected(
                    // fontFamily: 'Alexandria',
                    color: Colors.grey,
                    fontSize: 12 + sizeFontController.addorNotAdd),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hedder,
                  hintStyle: fontController.typeselected(
                      //  fontFamily: 'Alexandria',
                      color: Color.fromARGB(255, 144, 143, 143),
                      fontSize: 14 + sizeFontController.addorNotAdd),
                ),
                onSubmitted: (value) {},
              ),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width < 391 ? 60 : 69,
              height: 47,
              decoration: BoxDecoration(
                color: Color(0xFF095A17),
              ),
              child: icon),
        ],
      ),
    );
  }
}
