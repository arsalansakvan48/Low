import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/homepage/fourthparthomrpage/fourthparthomrpage.dart';
import 'package:vibration/vibration.dart';
import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class lastNewsPage extends StatelessWidget {
  const lastNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: grencolor,
        title: Center(
          child: Text(
            'اخر اخبار',
            style: fontController.typeselected(
              //  fontFamily: 'Alexandria',
              fontSize: 20 + sizeFontController.addorNotAdd,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Vibration.vibrate(duration: 100);
              homeController.changescreen(6);
            },
            icon: const Icon(
              Icons.chevron_right_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            'asset/four/comment.png',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            fourthPartHomrPage(),
          ],
        ),
      ),
    );
  }
}
