import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/color.dart';

import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class secentPartLowPage extends StatelessWidget {
  secentPartLowPage(
      {super.key,
      required this.colors,
      required this.textHighlight,
      required this.bottonText,
      required this.textCOlors,
      required this.isRadios,
      required this.searchMark});
  String textHighlight;
  Widget bottonText;
  bool searchMark;
  bool isRadios;
  var colors;
  var textCOlors;
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Container(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              height: 48,
              width: 81,
              decoration: BoxDecoration(
                color: grencolor,
                borderRadius: BorderRadius.circular(isRadios == true ? 4 : 0),
              ),
              child: Center(
                child: bottonText,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width < 385 ? 220 : 258,
            height: 48,
            decoration: BoxDecoration(
              color: colors,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, bottom: 5, right: 2),
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: fontController.typeselected(
                          // fontFamily: 'Alexandria',
                          color: Color(0xFFB1B5BC),
                          fontSize: 12 + sizeFontController.addorNotAdd),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: textHighlight,
                        hintStyle: fontController.typeselected(
                            // fontFamily: 'Alexandria',
                            color: textCOlors,
                            fontSize: 12 + sizeFontController.addorNotAdd),
                      ),
                      onChanged: (value) {
                        homeController.changeValueOfScrech(value);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: searchMark == true
                      ? Icon(
                          Icons.search,
                          color: Color(0xFFB1B5BC),
                          size: 25,
                        )
                      : Text('  '),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
