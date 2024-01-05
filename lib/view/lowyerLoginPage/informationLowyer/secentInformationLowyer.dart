import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class secentInformationLowyer extends StatelessWidget {
  const secentInformationLowyer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'العنوان - المحافظة',
              style: fontController.typeselected(
                color: Color(0xFF095A17),
                fontSize: 15 + sizeFontController.addorNotAdd,
                //  fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width < 391 ? 85 : 115,
            ),
            Text(
              'العنوان المدينة',
              style: fontController.typeselected(
                color: Color(0xFF095A17),
                fontSize: 15 + sizeFontController.addorNotAdd,
                //  fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            SizedBox(
              width: 25,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 3, right: 2),
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: fontController.typeselected(
                        //   fontFamily: 'Alexandria',
                        color: Colors.grey,
                        fontSize: 12 + sizeFontController.addorNotAdd),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'المدينة',
                      hintStyle: fontController.typeselected(
                          //  fontFamily: 'Alexandria',
                          color: Colors.grey,
                          fontSize: 12 + sizeFontController.addorNotAdd),
                    ),
                    onSubmitted: (value) {},
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width < 391 ? 160 : 186,
                height: 41,
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
                        padding: const EdgeInsets.only(
                            left: 15, bottom: 3, right: 2),
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: fontController.typeselected(
                              //  fontFamily: 'Alexandria',
                              color: Colors.grey,
                              fontSize: 12 + sizeFontController.addorNotAdd),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'المحافظة',
                            hintStyle: fontController.typeselected(
                                //  fontFamily: 'Alexandria',
                                color: Colors.grey,
                                fontSize: 12 + sizeFontController.addorNotAdd),
                          ),
                          onSubmitted: (value) {},
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width < 391 ? 45 : 60,
                      height: 41,
                      decoration: BoxDecoration(color: Color(0xFF095A17)),
                      child: Center(
                          child: Image.asset(
                        'asset/postion.png',
                        width: 25,
                        height: 25,
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width < 391 ? 160 : 186,
                height: 41,
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
                        padding: const EdgeInsets.only(
                            left: 15, bottom: 3, right: 2),
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: fontController.typeselected(
                              //   fontFamily: 'Alexandria',
                              color: Colors.grey,
                              fontSize: 12),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'المحافظة',
                            hintStyle: fontController.typeselected(
                                // fontFamily: 'Alexandria',
                                color: Colors.grey,
                                fontSize: 12),
                          ),
                          onSubmitted: (value) {},
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width < 391 ? 45 : 60,
                      height: 41,
                      decoration: BoxDecoration(color: Color(0xFF095A17)),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
