import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lowsPage/secentPartLowPage.dart';
import 'package:lowproject/view/titleCardEveryPage.dart';
import 'package:vibration/vibration.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class allLow extends StatelessWidget {
  const allLow({super.key});

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
            'القانون',
            style: fontController.typeselected(
                // fontFamily: 'Alexandria',
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
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 389,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFDFFFE0),
              ),
              child: Center(
                child: Text(
                  'من خلال هذا القسم\nيمكنكم إلقاء نظرة على جميع القوانين في مختلفة الجوانب والمجالات.',
                  textAlign: TextAlign.center,
                  style: fontController.typeselected(
                      //  fontFamily: 'Alexandria',
                      color: grencolor,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            secentPartLowPage(
              textCOlors: Colors.grey,
              isRadios: true,
              colors: grencolor.withOpacity(0.15),
              searchMark: true,
              bottonText: Text(
                'البحث',
                style: fontController.typeselected(
                    // fontFamily: 'Alexandria',
                    color: background,
                    fontSize: 15),
              ),
              textHighlight: 'ضع هنا اسم القانين المراد البحث عنه',
            ),
            SizedBox(
              height: 20,
            ),
            titleCardLowPage(
              text: 'القوانین',
              color: true,
              size: false,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              color: Color.fromARGB(179, 231, 255, 240),
              height: 500,
              child: ListView.builder(
                itemCount: homeController.listallLow.length,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                    left: 20,
                    right: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Vibration.vibrate(duration: 100);
                      //    Get.to(moreLowsPage());
                    },
                    child: Container(
                      width: 388,
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: grencolor),
                      child: Center(
                        child: Text(
                          homeController.listallLow[index][0] as String,
                          textAlign: TextAlign.center,
                          style: fontController.typeselected(
                            color: Colors.white,
                            fontSize: 13,
                            //  fontFamily: 'Alexandria',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
