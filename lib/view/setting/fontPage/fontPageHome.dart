import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/setting/changeTypeFont/changeTypeFont.dart';
import 'package:lowproject/view/setting/fontPage/changeFontSize.dart';
import 'package:vibration/vibration.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class fontPageHome extends StatelessWidget {
  const fontPageHome({super.key});

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
            'تغير نوع وحجم الخط',
            style: fontController.typeselected(
                // fontFamily: 'Alexandria',
                fontSize: 23 + sizeFontController.addorNotAdd,
                color: Colors.white,
                fontWeight: FontWeight.w500),
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
        leading: Text('  '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: cardFontPage(
              imageurl1: Image.asset(
                'asset/one/Vector (8).png',
                width: MediaQuery.of(context).size.width > 391 ? 38 : 30,
                height: MediaQuery.of(context).size.width > 391 ? 33 : 23,
              ),
              text: 'تغيير حجم الخط',
              imageurl2: Image.asset(
                'asset/one/Vector (9).png',
                width: MediaQuery.of(context).size.width > 391 ? 38 : 30,
                height: MediaQuery.of(context).size.width > 391 ? 33 : 23,
              ),
              function: () {
                Vibration.vibrate(duration: 100);
                Get.to(changeFontSize());
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: cardFontPage(
              imageurl1: Image.asset(
                'asset/one/Vector (10).png',
                width: MediaQuery.of(context).size.width > 391 ? 38 : 33,
                height: MediaQuery.of(context).size.width > 391 ? 33 : 26,
              ),
              text: 'تغيير نـوع الخـط',
              imageurl2: Image.asset(
                'asset/three/pen.png',
                width: MediaQuery.of(context).size.width > 391 ? 38 : 31,
                height: MediaQuery.of(context).size.width > 391 ? 33 : 24,
              ),
              function: () {
                Vibration.vibrate(duration: 100);
                Get.to(changeTypeFont());
              },
            ),
          ),
        ],
      ),
    );
  }
}

class cardFontPage extends StatelessWidget {
  cardFontPage({
    super.key,
    required this.imageurl1,
    required this.imageurl2,
    required this.text,
    required this.function,
  });
  Widget imageurl1;
  Widget imageurl2;
  String text;
  var function;
  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return GestureDetector(
      onTap: function,
      child: Container(
        width: MediaQuery.of(context).size.width > 391 ? 389 : 333,
        height: 69,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: grencolor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            imageurl1,
            Text(
              text,
              style: fontController.typeselected(
                  fontSize: 29 + sizeFontController.addorNotAdd,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            imageurl2,
          ],
        ),
      ),
    );
  }
}
