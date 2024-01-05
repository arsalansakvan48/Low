import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lowyerLoginPage/informationLowyer/informationLowyer.dart';
import 'package:vibration/vibration.dart';

import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class lowyerLoginPage extends StatelessWidget {
  const lowyerLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: grencolor,
        title: Center(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                'انشاء حساب محامي / ه',
                style: fontController.typeselected(
                  //  fontFamily: 'Alexandria',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 22 + sizeFontController.addorNotAdd,
                ),
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
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Image.asset('asset/app10 1.png'),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 130, left: 50),
                      child: Text(
                        'يمكنك أضافة أسمك',
                        style: fontController.typeselected(
                          color: Colors.white,
                          fontSize: 34 + sizeFontController.addorNotAdd,
                          // fontFamily: 'Alexandria',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 10),
                      child: SizedBox(
                        width: 321,
                        height: 48,
                        child: Text(
                          'الى سجل المحاميين',
                          textAlign: TextAlign.end,
                          style: fontController.typeselected(
                            color: Colors.white,
                            fontSize: 30 + sizeFontController.addorNotAdd,
                            // fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 25),
                      child: Text(
                        'وذالك عبر أنشاء حساب',
                        style: fontController.typeselected(
                          color: Colors.white,
                          fontSize: 30 + sizeFontController.addorNotAdd,
                          // fontFamily: 'Alexandria',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 135),
                      child: Text(
                        'جديد كـ محامي',
                        textAlign: TextAlign.end,
                        style: fontController.typeselected(
                          color: Colors.white,
                          fontSize: 28 + sizeFontController.addorNotAdd,
                          // fontFamily: 'Alexandria',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'في التطبيق',
                        style: fontController.typeselected(
                          color: Colors.white,
                          fontSize: 46 + sizeFontController.addorNotAdd,
                          //  fontFamily: 'Alexandria',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: GestureDetector(
                onTap: () {
                  Vibration.vibrate(duration: 100);
                  Get.to(informationLowyer());
                },
                child: Container(
                  width: 368,
                  height: 69,
                  decoration: ShapeDecoration(
                    color: Color(0xFF095A17),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'أنشاء حساب',
                      style: fontController.typeselected(
                        color: Colors.white,
                        fontSize: 28 + sizeFontController.addorNotAdd,
                        // fontFamily: 'Alexandria',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
