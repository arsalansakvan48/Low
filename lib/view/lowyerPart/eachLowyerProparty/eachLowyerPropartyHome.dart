import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/CardextisasTextEachLowyerPropartyHome.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/cvPartEachLowyerPropartyHome.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/descrabtionPartEachLowyerPropartyHome.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/extisasTextEachLowyerPropartyHome.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/investmentTextEachLowyerPropartyHome.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/locationAndRitingEachLowyerPropartyHome.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/massegePageEachLowyer/massegePageEachLowyer.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/nameAndSubNameActive.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/phonePageeachLowyerPropartyHome/phonePageeachLowyerPropartyHome.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/topPartEachLowyerPropartyHome.dart';
import 'package:vibration/vibration.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class eachLowyerPropartyHome extends StatelessWidget {
  const eachLowyerPropartyHome({super.key});

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
                elevation: 0,
                backgroundColor: grencolor,
                title: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'التفاصيل',
                      style: fontController.typeselected(
                          // fontFamily: 'Alexandria',
                          fontSize: 20 + sizeFontController.addorNotAdd,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(top: 19, right: 10),
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
            topPartEachLowyerPropartyHome(
              imageusrl: "asset/image.png",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width > 391 ? 6 : 5,
            ),
            nameAndSubNameActive(
              name: 'المحامي محمد سعد',
              subname: 'ماسجتير القانون الجنائي والأداري',
              active: 'متصل',
            ),
            cvPartEachLowyerPropartyHome(),
            SizedBox(
              height: MediaQuery.of(context).size.width > 391 ? 20 : 5,
            ),
            descrabtionPartEachLowyerPropartyHome(
              text:
                  'بكالوريوس قانون جامعة بغداد طالب دراسات عليا  في ون دبلوم الأكادمية الكندية تورنتو اللغات اللغة الأنكليزية والأسبانية والرومانية مؤسس ورئيس اول رابطة للمحاميين الشباب في العراق عام 1994 اول   ',
            ),
            locationAndRitingEachLowyerPropartyHome(
              location1: 'بغداد - المنصور - بالقرب من مول بابلون',
              location2: 'غرفة محاميين المنصور',
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            const extisasTextEachLowyerPropartyHome(),
            const SizedBox(
              height: 5,
            ),
            CardextisasTextEachLowyerPropartyHome(),
            SizedBox(
              height: MediaQuery.of(context).size.width > 391 ? 10 : 5,
            ),
            investmentTextEachLowyerPropartyHome(),
            SizedBox(
              height: MediaQuery.of(context).size.width > 391 ? 15 : 5,
            ),
            GestureDetector(
              onTap: () {
                Vibration.vibrate(duration: 100);
                Get.to(massegePageEachLowyer());
              },
              child: Container(
                width: MediaQuery.of(context).size.width < 391 ? 354 : 394,
                height: 61,
                decoration: ShapeDecoration(
                  color: Color(0xFF095A17),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 25,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width < 391 ? 15 : 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'رسالة نصية',
                          textAlign: TextAlign.end,
                          style: fontController.typeselected(
                            color: Colors.white,
                            fontSize: 28 + sizeFontController.addorNotAdd,
                            //  fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        Text(
                          'يمكنك أرسال استشارتك عن طريق رسالة نصية',
                          style: fontController.typeselected(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width < 391
                                ? 11 + sizeFontController.addorNotAdd
                                : 12 + sizeFontController.addorNotAdd,
                            //  fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 62,
                      height: 62,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/b32alance 1.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Vibration.vibrate(duration: 100);
                Get.to(phonePageeachLowyerPropartyHome());
              },
              child: Container(
                width: MediaQuery.of(context).size.width < 391 ? 354 : 394,
                height: 61,
                decoration: ShapeDecoration(
                  color: Color(0xFF095A17),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 25,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width < 391 ? 5 : 35,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'مكالمة هاتفية',
                          textAlign: TextAlign.end,
                          style: fontController.typeselected(
                            color: Colors.white,
                            fontSize: 28 + sizeFontController.addorNotAdd,
                            // fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        Text(
                          'يمكنك سؤال استشارتك عن طريق مكالمة هاتفية',
                          style: fontController.typeselected(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width < 391
                                ? 11 + sizeFontController.addorNotAdd
                                : 12 + sizeFontController.addorNotAdd,
                            //  fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'asset/telephone-call-(1) 1.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width > 385 ? 5 : 0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 75,
            ),
          ],
        ),
      ),
    );
  }
}
