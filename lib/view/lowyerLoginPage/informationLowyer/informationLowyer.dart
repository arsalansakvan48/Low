import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lowyerLoginPage/informationLowyer/descrabtionPartinformationLowyer.dart';
import 'package:lowproject/view/lowyerLoginPage/informationLowyer/firstInformationLowyerPart.dart';
import 'package:lowproject/view/lowyerLoginPage/informationLowyer/phoneEmailAndCommunty.dart';
import 'package:lowproject/view/lowyerLoginPage/informationLowyer/secentInformationLowyer.dart';
import 'package:lowproject/view/lowyerLoginPage/informationLowyer/textOfAllInformationLowyer.dart';
import 'package:lowproject/view/lowyerLoginPage/informationLowyer/toUpplodImageBotton.dart';
import 'package:vibration/vibration.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class informationLowyer extends StatelessWidget {
  const informationLowyer({super.key});

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: grencolor,
        title: Center(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                'معلمومات تسجيل المحامي',
                style: fontController.typeselected(
                    // fontFamily: 'Alexandria',
                    color: Colors.white,
                    fontSize: 20 + sizeFontController.addorNotAdd,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Vibration.vibrate(duration: 100);
              Get.back();
            },
            icon: const Icon(
              Icons.chevron_right_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
        leading: Text(''),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            firstInformationLowyerPart(),
            SizedBox(
              height: 10,
            ),
            secentInformationLowyer(),
            SizedBox(
              height: 5,
            ),
            textOfAllInformationLowyer(
              text: 'رقم الهاتف',
            ),
            phoneEmailAndCommunty(
              hedder: '0700000000000000',
              icon: Icon(
                Icons.phone_in_talk_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            textOfAllInformationLowyer(
              text: 'الايميل',
            ),
            phoneEmailAndCommunty(
              hedder: 'iraqilaws.com@gmail',
              icon: Icon(
                Icons.email,
                size: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            textOfAllInformationLowyer(
              text: 'غرفة تسجيل المحامي',
            ),
            phoneEmailAndCommunty(
              hedder: 'مثلاً غرفة محاميين المنصور',
              icon: Image.asset(
                'asset/Vector11.png',
                height: 25,
                width: 25,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            textOfAllInformationLowyer(
              text: 'نبذة عن المحامي',
            ),
            SizedBox(
              height: 5,
            ),
            descrabtionPartinformationLowyer(),
            SizedBox(
              height: 15,
            ),
            toUpplodImageBotton(),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 285,
              height: 48,
              decoration: ShapeDecoration(
                color: Color(0xFF095A17),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_outline_outlined,
                    size: 28,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'أنشاء حساب',
                    style: fontController.typeselected(
                      color: Colors.white,
                      fontSize: 20 + sizeFontController.addorNotAdd,
                      //fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'لديك حساب ؟ تسجيل الدخول',
              textAlign: TextAlign.center,
              style: fontController.typeselected(
                color: Color(0xFF095A17),
                fontSize: 15 + sizeFontController.addorNotAdd,
                //  fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
