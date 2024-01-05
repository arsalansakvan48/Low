import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class locationAndRitingEachLowyerPropartyHome extends StatelessWidget {
  locationAndRitingEachLowyerPropartyHome({
    super.key,
    required this.location1,
    required this.location2,
  });
  String location1;
  String location2;
  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 35, left: 10),
          child: Container(
            width: 75.w,
            height: 80,
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 25),
                      child: Text(
                        'التقييم',
                        style: fontController.typeselected(
                          //  fontFamily: 'Alexandria',
                          fontSize: MediaQuery.of(context).size.width > 385
                              ? 12 + sizeFontController.addorNotAdd
                              : 11 + sizeFontController.addorNotAdd,
                          color: Color(0xFF514F4F),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Image.asset(
                        'asset/rating 1.png',
                        height: 80,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width > 391 ? 20 : 10,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width > 418 ? 40 : 0),
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width > 391 &&
                            MediaQuery.of(context).size.width < 418
                        ? 30
                        : 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width:
                          MediaQuery.of(context).size.width < 385 ? 200 : 220,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          location1,
                          textAlign: TextAlign.end,
                          style: fontController.typeselected(
                            color: Color(0xFF514F4F),
                            fontSize: 12 + sizeFontController.addorNotAdd,
                            // fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width > 391 ? 10 : 8,
                    ),
                    Container(
                      width: 22,
                      height: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("asset/kisspng-vector 1.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    location2,
                    style: fontController.typeselected(
                      color: Color(0xFF514F4F),
                      fontSize: 12 + sizeFontController.addorNotAdd,
                      //  fontFamily: 'Alexandria',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 22,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("asset/balance 1.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width > 391 ? 10 : 8,
            ),
          ],
        ),
      ],
    );
  }
}
