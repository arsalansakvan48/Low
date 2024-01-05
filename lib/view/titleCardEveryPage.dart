import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';

import '../controller/TypeFontController.dart';
import '../controller/sizeFontController.dart';

class titleCardLowPage extends StatelessWidget {
  titleCardLowPage({
    super.key,
    required this.text,
    required this.color,
    required this.size,
  });
  String text;
  bool color;
  bool size;
  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Padding(
      padding: EdgeInsets.only(
          right: MediaQuery.of(context).size.width < 385 ? 5 : 27),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 30,
          child: Container(
            width: size == true ? 111 : 103,
            height: 33,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
                borderRadius: BorderRadius.circular(size == true ? 25 : 5),
                color: color == true ? grencolor : orangecolor),
            child: Center(
              child: Text(
                text,
                style: fontController.typeselected(
                  color: Colors.white,
                  fontSize: 15 + sizeFontController.addorNotAdd,
                  //  fontFamily: 'Alexandria',
                  fontWeight: FontWeight.bold,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
