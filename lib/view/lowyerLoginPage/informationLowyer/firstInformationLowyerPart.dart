import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/lowyerLoginPage/informationLowyer/textOfAllInformationLowyer.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class firstInformationLowyerPart extends StatelessWidget {
  const firstInformationLowyerPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child: textOfAllInformationLowyer(
              text: 'الاسم يسبقة ( المحامي - المحامية )',
            )),
        Container(
          width: MediaQuery.of(context).size.width < 391 ? 325 : 381,
          height: MediaQuery.of(context).size.width < 391 ? 50 : 56,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFF095A17)),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 5, right: 2),
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: fontController.typeselected(
                        //  fontFamily: 'Alexandria',
                        color: Colors.grey,
                        fontSize: 12 + sizeFontController.addorNotAdd),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'الاسم يسبقة',
                      hintStyle: fontController.typeselected(
                          //  fontFamily: 'Alexandria',
                          color: Color.fromARGB(255, 132, 131, 131),
                          fontSize: 12 + sizeFontController.addorNotAdd),
                    ),
                    onSubmitted: (value) {},
                  ),
                ),
              ),
              Container(
                width: 69,
                height: 56,
                decoration: BoxDecoration(
                  color: Color(0xFF095A17),
                ),
                child: Icon(
                  Icons.balance_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
