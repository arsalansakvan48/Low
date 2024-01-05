import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lowyerPart/firstPartLowyerHome/payNew/asiaZainVizaLogo.dart';
import 'package:lowproject/view/lowyerPart/firstPartLowyerHome/payNew/firstPartPayNewPage.dart';
import 'package:vibration/vibration.dart';

import '../../../../controller/TypeFontController.dart';
import '../../../../controller/sizeFontController.dart';

class payNewPage extends StatefulWidget {
  payNewPage({super.key});

  @override
  State<payNewPage> createState() => _payNewPageState();
}

class _payNewPageState extends State<payNewPage> {
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: grencolor,
        title: Center(
          child: Text(
            'الدفــع',
            style: fontController.typeselected(
                //  fontFamily: 'Alexandria',
                fontSize: 20 + sizeFontController.addorNotAdd,
                color: Colors.white,
                fontWeight: FontWeight.bold),
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
        leading: Text(' '),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: firstPartPayNewPage(
                text: 'اختر طريقة الدفع',
              ),
            ),
            asiaZainVizaLogo(),
          ],
        ),
      ),
    );
  }
}
