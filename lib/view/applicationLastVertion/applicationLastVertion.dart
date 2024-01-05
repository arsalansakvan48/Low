import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/controller/TypeFontController.dart';
import 'package:lowproject/controller/sizeFontController.dart';
import 'package:lowproject/view/color.dart';

class applicationLastVertion extends StatelessWidget {
  const applicationLastVertion({super.key});

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: grencolor,
          title: Center(
            child: Text(
              'حـول',
              style: fontController.typeselected(
                color: Colors.white,
                fontSize: 29 + sizeFontController.addorNotAdd,
                //  fontFamily: 'Inter',
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
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 430,
              height: 900,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'حـول',
                    style: fontController.typeselected(
                      color: Colors.white,
                      fontSize: 30,
                      // fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Container(
                    width: 133,
                    height: 122,
                    decoration: ShapeDecoration(
                      color: Color(0xFFE0E0E0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 123,
                        height: 114,
                        decoration: ShapeDecoration(
                          color: Color(0xFF095A17),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Container(
                          width: 96,
                          height: 96,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'asset/Iraqi-Laws.png',
                              ),
                              //  fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Positioned(
                    left: 133,
                    top: 435,
                    child: Text(
                      'دليل القوانين العراقية',
                      style: TextStyle(
                        color: Color(0xFF095A17),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 173,
                    top: 455,
                    child: Text(
                      'نسخة 4.19.1',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Positioned(
                    left: 129,
                    top: 720,
                    child: Text(
                      'جميع الحقوق التطبيق محفوظة ',
                      style: fontController.typeselected(
                        color: Color(0xFF095A17),
                        fontSize: 14,
                        // fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '2024',
                        style: fontController.typeselected(
                          color: Color(0xFF095A17),
                          fontSize: 11,
                          // fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.width > 391
                                ? 3
                                : 2),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width > 391
                                      ? 3
                                      : 2),
                              child: Container(
                                width: MediaQuery.of(context).size.width > 391
                                    ? 11
                                    : 10,
                                height: MediaQuery.of(context).size.width > 391
                                    ? 11
                                    : 10,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF095A17),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              right: 0,
                              bottom: 0,
                              child: Center(
                                child: Text(
                                  'c',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width > 391
                                            ? 11
                                            : 9,
                                    fontFamily: 'Alexandria',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              // Use FractionalOffset to center the Positioned widget
                              // Adjust the values as needed
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'لـدليل القوانين العراقية ',
                        style: fontController.typeselected(
                          color: Color(0xFF095A17),
                          fontSize: 14,
                          // fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
