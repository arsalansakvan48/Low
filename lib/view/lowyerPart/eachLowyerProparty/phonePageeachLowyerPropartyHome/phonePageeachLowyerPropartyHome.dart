import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/phonePageeachLowyerPropartyHome/CardDatPhonePageeachLowyerPropartyHome.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/phonePageeachLowyerPropartyHome/callendarTitlePhonePage.dart';
import 'package:vibration/vibration.dart';

import '../../../../controller/TypeFontController.dart';
import '../../../../controller/sizeFontController.dart';

class phonePageeachLowyerPropartyHome extends StatelessWidget {
  phonePageeachLowyerPropartyHome({super.key});
  var list = [
    [
      '1',
      'الاحد',
    ],
    [
      '2',
      'الاثنين',
    ],
    [
      '3',
      'الثلاثاء',
    ],
    [
      '4',
      'الأربعاء',
    ],
    [
      '5',
      'الخميس',
    ],
  ];
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Scaffold(
      backgroundColor: Color(0xFFE1E0E0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 25, top: 25),
                child: GestureDetector(
                  onTap: () {
                    Vibration.vibrate(duration: 100);
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.black.withOpacity(0.6),
                    size: 35,
                  ),
                ),
              ),
            ),
            Text(
              'مكالمة هاتفية',
              style: fontController.typeselected(
                color: Color(0xFF095A17),
                fontSize: 24 + sizeFontController.addorNotAdd,
                //  fontFamily: 'Alexandria',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            callendarTitle(
              text: 'أختر يوم الأستشارة',
              icons: Icon(
                Icons.calendar_month_outlined,
                color: grencolor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 25, right: 24, left: 24, bottom: 15),
              child: Container(
                height: 65,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CardDayPhonePageeachLowyerPropartyHome(
                      number: list[index][0],
                      day: list[index][1],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width > 391 ? 377 : 310,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFBBB9B9),
                  ),
                ),
              ),
            ),
            callendarTitle(
              text: 'أختر الوقت المناسب',
              icons: Icon(
                Icons.watch_later_outlined,
                color: grencolor,
                size: 26,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width > 391 ? 350 : 300,
              //  height: 125,
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns
                  mainAxisSpacing: 10.0, // Spacing between rows
                  crossAxisSpacing: 15.0, // Spacing between columns
                ),
                itemCount: 9,
                // Total number of items (3 columns x 4 rows = 12 items)
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2.0,
                    color: Colors.white,
                    child: Container(
                      width: 100,
                      height: 31,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF3F3F3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '1:00 pm',
                        textAlign: TextAlign.center,
                        style: fontController.typeselected(
                          color: Colors.black,
                          fontSize: 16 + sizeFontController.addorNotAdd,
                          // fontFamily: 'Alexandria',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width > 391 ? 377 : 310,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFBBB9B9),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width > 391 ? 388 : 300,
              height: 80,
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
              child: Padding(
                padding: const EdgeInsets.only(top: 3, right: 15),
                child: TextField(
                  textAlign: TextAlign.right,
                  style: fontController.typeselected(
                      // fontFamily: 'Alexandria',
                      color: Colors.grey,
                      fontSize: 12 + sizeFontController.addorNotAdd),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'نبذة عن الأستشارة هنا',
                    hintStyle: fontController.typeselected(
                      color: Color(0xFF6A6767),
                      fontSize: 16 + sizeFontController.addorNotAdd,
                      // fontFamily: 'Alexandria',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  onSubmitted: (value) {},
                ),
              ),
            ),
            SizedBox(
              height: 75,
            ),
            Container(
              width: MediaQuery.of(context).size.width > 391 ? 388 : 310,
              height: 64,
              decoration: ShapeDecoration(
                color: Color(0xFF095A17),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 15,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'حجز الموعد',
                  textAlign: TextAlign.center,
                  style: fontController.typeselected(
                    color: Colors.white,
                    fontSize: 20 + sizeFontController.addorNotAdd,
                    // fontFamily: 'Alexandria',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
