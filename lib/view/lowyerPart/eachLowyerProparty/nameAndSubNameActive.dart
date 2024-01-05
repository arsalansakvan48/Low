import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class nameAndSubNameActive extends StatelessWidget {
  nameAndSubNameActive({
    super.key,
    required this.name,
    required this.subname,
    required this.active,
  });
  String name;
  String subname;
  String active;
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: 18,
                height: 18,
                child: Icon(
                  Icons.check_circle_sharp,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width > 385 ? 10 : 10,
            ),
            SizedBox(
              width: 264,
              height: 38,
              child: Text(
                name,
                style: fontController.typeselected(
                  color: Color(0xFF363535),
                  fontSize: MediaQuery.of(context).size.width > 385
                      ? 25 + sizeFontController.addorNotAdd
                      : 22 + sizeFontController.addorNotAdd,
                  //  fontFamily: 'Alexandria',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width > 385 ? 8 : 4,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width > 385 ? 237 : 220,
          child: Text(
            subname,
            textAlign: TextAlign.center,
            style: fontController.typeselected(
              color: Color(0xFF095A17),
              fontSize: MediaQuery.of(context).size.width > 385
                  ? 13 + sizeFontController.addorNotAdd
                  : 11 + sizeFontController.addorNotAdd,
              // fontFamily: 'Alexandria',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width > 385 ? 12 : 6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.circle,
              size: 10,
              color: Color(0xFF00FF38),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              active,
              textAlign: TextAlign.center,
              style: fontController.typeselected(
                color: Color(0xFF00FF38),
                fontSize: 15 + sizeFontController.addorNotAdd,
                // fontFamily: 'Alexandria',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
