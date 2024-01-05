import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/firstPartEveryPage.dart';
import 'package:lowproject/view/homepage/secentparthomepage/cardSecentPart.dart';
import 'package:lowproject/view/propartyOfAllCatagory/propartyOfAllCatagoryHome.dart';
import 'package:lowproject/view/titleCardEveryPage.dart';
import 'package:vibration/vibration.dart';

import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class rightsPage extends StatelessWidget {
  rightsPage({super.key});

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
            'حقوقک',
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
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            'asset/balance-111.png',
            width: 50,
            height: 53,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            firstPartEveryPage(
                text:
                    'من خلال هاذا القسم يمكنكم القاء نظرة على\nجميع القوانين في مختلفة الجوانب والمجالات',
                color: grencolor,
                hight: false),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width < 385 ? 23 : 15),
              child: titleCardLowPage(
                text: 'حقوقک',
                color: true,
                size: false,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width > 391 ? 345 : 310,
              height: 455,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns
                  mainAxisSpacing: 3.0, // Spacing between rows
                  crossAxisSpacing: 3.0, // Spacing between columns
                ),
                itemCount: homeController.list2
                    .length, // Total number of items (3 columns x 4 rows = 12 items)
                itemBuilder: (context, index) {
                  return cardSecentPart(
                    title: homeController.list2[index][0] as String,
                    image: homeController.list2[index][1] as String,
                    sizeHW: false,
                    function: () {
                      Vibration.vibrate(duration: 100);
                      Get.to(
                        propartyOfAllCatagoryHome(
                          list1: homeController.listright,
                          titleAppbar: homeController.list2[index][0] as String,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
