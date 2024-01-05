import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/homepage/secentparthomepage/cardSecentPart.dart';
import 'package:lowproject/view/propartyOfAllCatagory/propartyOfAllCatagoryHome.dart';
import 'package:vibration/vibration.dart';
import '../../controller/Controller.dart';
import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class servicessPage extends StatelessWidget {
  servicessPage({super.key});

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
            'الخدمات',
            style: fontController.typeselected(
                // fontFamily: 'Alexandria',
                fontSize: 27 + sizeFontController.addorNotAdd,
                color: Colors.white,
                fontWeight: FontWeight.w600),
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
            'asset/four/apps-add.png',
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            /*  firstPartEveryPage(
                text:
                    'من خلال هاذا القسم يمكنكم القاء نظرة على\nجميع القوانين في مختلفة الجوانب والمجالات',
                color: orangecolor,
                hight: false),*/
            SizedBox(
              height: 5,
            ),
            Container(
              height: 193,
              child: Stack(
                children: [
                  Image.asset(
                    'asset/app33237 1.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'هنا يمكنك',
                          textAlign: TextAlign.end,
                          style: fontController.typeselected(
                            fontSize: 28 + sizeFontController.addorNotAdd,
                            color: background,
                            fontWeight: FontWeight.w600,
                            //  fontFamily: 'Alexandria',
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'بأفضل جودة وأعلى أحترافية\nالتي نقدمها لكم في دليل القوانين العراقية\n الوصول والأطلاع على جميع الخدمات',
                          textAlign: TextAlign.end,
                          style: fontController.typeselected(
                              color: background,
                              //  fontFamily: 'Alexandria',
                              fontWeight: FontWeight.w600,
                              fontSize: 9 + sizeFontController.addorNotAdd),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width > 391 ? 17.w : 17.w,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width > 420 ? 6 : 0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width > 388 &&
                                MediaQuery.of(context).size.width < 392
                            ? 8
                            : 0),
                    child: Container(
                      width: 103,
                      height: 31,
                      decoration: ShapeDecoration(
                        color: Color(0xFF095A17),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Center(
                        child: Text(
                          'الخدمات',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width < 370 ? 14 : 0,
                  right: MediaQuery.of(context).size.width < 370 ? 14 : 0),
              child: Container(
                width: MediaQuery.of(context).size.width > 390 ? 385 : 345,
                height: 450,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of columns
                    mainAxisSpacing: 3.0, // Spacing between rows
                    crossAxisSpacing: 2.0, // Spacing between columns
                  ),
                  itemCount: homeController.list1
                      .length, // Total number of items (3 columns x 4 rows = 12 items)
                  itemBuilder: (context, index) {
                    // You can customize the content of each grid item here
                    return LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        if (homeController.list1[index][3] == true) {
                          return cardSecentPart(
                            title: homeController.list1[index][0] as String,
                            image: homeController.list1[index][1] as String,
                            sizeHW: false as bool,
                            function: () {
                              Vibration.vibrate(duration: 100);
                              Get.to(
                                propartyOfAllCatagoryHome(
                                  list1: homeController.listservess,
                                  titleAppbar:
                                      homeController.list1[index][0] as String,
                                ),
                              );
                            },
                          );
                        } else if (homeController.list1[index][3] == false) {
                          return Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 103,
                              width: 97,
                              decoration: ShapeDecoration(
                                color: Color(0xFF095A17),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 60),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: 35,
                                        height: 15,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFFC600),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(1)),
                                          shadows: [
                                            BoxShadow(
                                              color: Color(0x3F000000),
                                              blurRadius: 0,
                                              offset: Offset(0, 0),
                                              spreadRadius: 0,
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Text(
                                            'قريباً',
                                            style: fontController.typeselected(
                                              color: Color(0xFF3B3B3B),
                                              fontSize: 10 +
                                                  sizeFontController
                                                      .addorNotAdd,
                                              // fontFamily: 'Alexandria',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
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
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: 103,
                            width: 97,
                            decoration: ShapeDecoration(
                              color: Color(0xFF095A17),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
 Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.height > 925 ? 4 : 0),
              child: Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height > 635 &&
                            MediaQuery.of(context).size.height < 820
                        ? 11
                        : 0),
                child: titleCardLowPage(
                  text: 'الخدمات',
                  color: true,
                  size: false,
                ),
              ),
            ),
 */