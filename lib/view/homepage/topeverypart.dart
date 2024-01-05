import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';

import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class topeverypart extends StatelessWidget {
  topeverypart(
      {super.key,
      required this.title,
      required this.function,
      required this.color});
  String title = '';
  var function;
  bool color;
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Container(
      height: 50,
      color: background,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: function,
              child: Container(
                width: 45,
                height: 17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: grencolor,
                ),
                child: Center(
                  child: Text(
                    'المزید',
                    style: fontController.typeselected(
                        //fontFamily: 'Alexandria',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 9 + sizeFontController.addorNotAdd),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 92,
              height: 28,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: color == true ? grencolor : orangecolor),
              child: Center(
                child: Text(
                  title,
                  style: fontController.typeselected(
                    // fontFamily: 'Alexandria',
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
