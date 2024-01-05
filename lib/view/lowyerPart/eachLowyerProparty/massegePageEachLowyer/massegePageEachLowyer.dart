import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/controller/TypeFontController.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/massegePageEachLowyer/topMassegePageEachLowyer.dart';
import 'package:vibration/vibration.dart';

import '../../../../controller/sizeFontController.dart';

class massegePageEachLowyer extends StatelessWidget {
  const massegePageEachLowyer({super.key});

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());

    return Scaffold(
      backgroundColor: Color(0xFFDADADA),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: grencolor,
          title: Center(
            child: Text(
              'استشاراتي',
              style: fontController.typeselected(
                color: Colors.white,
                fontSize: 25 + sizeFontController.addorNotAdd,
                //  fontFamily: 'Alexandria',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 10),
              child: IconButton(
                onPressed: () {
                  Vibration.vibrate(duration: 100);
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          ],
          leading: Text(' ')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: topMassegePageEachLowyer(),
          ),
          Container(
            color: Color(0xFFDADADA),
            height: (2 * 220),
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  left: 25,
                  right: 25,
                ),
                child: Container(
                  width: 388,
                  height: 169,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 15,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          width: 24,
                          height: 24,
                          child: Icon(
                            Icons.arrow_back,
                            size: 20,
                            color: Color(0xFFBBB9B9),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'استشارة رقم 1143',
                              style: fontController.typeselected(
                                color: Colors.black,
                                fontSize: 15 + sizeFontController.addorNotAdd,
                                // fontFamily: 'Alexandria',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'احمد ياسين',
                                style: fontController.typeselected(
                                  color: Colors.black,
                                  fontSize: 15 + sizeFontController.addorNotAdd,
                                  //   fontFamily: 'Alexandria',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'قسـم الأستشــارة :  ',
                                    style: fontController.typeselected(
                                      color: Color(0xFF6A6767),
                                      fontSize:
                                          15 + sizeFontController.addorNotAdd,
                                      //  fontFamily: 'Alexandria',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'جنائي',
                                    style: fontController.typeselected(
                                      color: Color(0xFF095A17),
                                      fontSize:
                                          15 + sizeFontController.addorNotAdd,
                                      // fontFamily: 'Alexandria',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'طريقة الأستشارة :',
                                    style: fontController.typeselected(
                                      color: Color(0xFF6A6767),
                                      fontSize:
                                          15 + sizeFontController.addorNotAdd,
                                      //  fontFamily: 'Alexandria',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: fontController.typeselected(
                                      color: Colors.black,
                                      fontSize:
                                          15 + sizeFontController.addorNotAdd,
                                      // fontFamily: 'Alexandria',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'رسالة نصية',
                                    style: fontController.typeselected(
                                      color: Color(0xFF095A17),
                                      fontSize:
                                          15 + sizeFontController.addorNotAdd,
                                      //  fontFamily: 'Alexandria',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'تاريــخ الأستشــــارة: ',
                                    style: fontController.typeselected(
                                      color: Color(0xFF6A6767),
                                      fontSize:
                                          15 + sizeFontController.addorNotAdd,
                                      //  fontFamily: 'Alexandria',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '14/11/  2023 10:00',
                                    style: fontController.typeselected(
                                      color: Color(0xFF095A17),
                                      fontSize:
                                          15 + sizeFontController.addorNotAdd,
                                      // fontFamily: 'Alexandria',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
