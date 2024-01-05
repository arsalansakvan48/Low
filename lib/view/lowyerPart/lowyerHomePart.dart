import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lowyerLoginPage/lowyerLoginPage.dart';
import 'package:lowproject/view/lowyerPart/SecenetPartLowyerHome/cardSecenetPartLowyerHome/SecenetPartLowyerHome.dart';
import 'package:lowproject/view/lowyerPart/firstPartLowyerHome/firstPartLowyerHome.dart';
import 'package:vibration/vibration.dart';
import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class lowyerHomePart extends StatefulWidget {
  const lowyerHomePart({super.key});

  @override
  State<lowyerHomePart> createState() => _lowyerHomePartState();
}

class _lowyerHomePartState extends State<lowyerHomePart> {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: grencolor,
        title: Center(
          child: Text(
            'مكاتب محاماة',
            style: fontController.typeselected(
                // fontFamily: 'Alexandria',
                fontSize: 19 + sizeFontController.addorNotAdd,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              homeController.changescreen(6);
              Vibration.vibrate(duration: 100);
            },
            icon: const Icon(
              Icons.chevron_right_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
        leading: GestureDetector(
          onTap: () {
            Vibration.vibrate(duration: 100);
            Get.to(lowyerLoginPage());
          },
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Image.asset(
              'asset/Path 12402.png',
              height: 15,
              width: 35,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            firstPartLowyerHomePage(),
            SizedBox(
              height: 25,
            ),
            SecenetPartLowyerHome(),
          ],
        ),
      ),
    );
  }
}
