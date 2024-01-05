import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:lowproject/view/loginPart/emailTextLogin.dart';
import 'package:lowproject/view/loginPart/forgetPasowrdAndChackboxPart.dart';
import 'package:lowproject/view/loginPart/loginButtonLoginPart.dart';
import 'package:lowproject/view/loginPart/passordLoginTextBox.dart';
import 'package:vibration/vibration.dart';

import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'asset/closeup-shot-person-holding-gavel-tabl 1.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 10),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  Vibration.vibrate(duration: 100);
                  Get.back();
                },
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Image.asset('asset/قوانين-3.png'),
              ),
              Text(
                'لوحة التحكم',
                style: fontController.typeselected(
                    color: Colors.grey[800],
                    fontSize: 24 + sizeFontController.addorNotAdd,
                    //  fontFamily: 'Alexandria',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'تسجيل الدخول',
                style: fontController.typeselected(
                  color: Colors.black,
                  fontSize: 24 + sizeFontController.addorNotAdd,
                  //  fontFamily: 'Alexandria',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              DottedBorder(
                child: Container(
                  width: 322,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    //color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      emailTextLogin(),
                      passordLoginTextBox(),
                      loginButtonLoginPart(),
                    ],
                  ),
                ),
                borderType: BorderType.RRect,
                strokeWidth: 1.5,
                dashPattern: const [8.8],
                color: grencolor,
                radius: const Radius.circular(5),
              ),
              SizedBox(
                height: 10,
              ),
              forgetPasowrdAndChackboxPart(),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Divider(
                  color: Color.fromRGBO(70, 69, 69, 1),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Vibration.vibrate(duration: 100);
                    },
                    child: Text(
                      'من هنا',
                      style: fontController.typeselected(
                        fontSize: 14 + sizeFontController.addorNotAdd,
                        color: grencolor,
                        //  fontFamily: 'Alexandria',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'قم بأنشاء حساب جديد',
                    style: fontController.typeselected(
                      fontSize: 14 + sizeFontController.addorNotAdd,
                      color: Colors.black,
                      //  fontFamily: 'Alexandria',
                      fontWeight: FontWeight.bold,
                    ),
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
