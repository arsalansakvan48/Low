import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lowsPage/moreLowsPage/moreLowsPage.dart';
import 'package:lowproject/view/lowsPage/secentPartLowPage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vibration/vibration.dart';
import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class searchPart extends StatelessWidget {
  const searchPart({super.key});

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
          child: Column(
            children: [
              Text(
                ' ',
                style: fontController.typeselected(
                    // fontFamily: 'Alexandria',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    'قانون العقوبات رقم 111 لسنة 1994 المعدل',
                    style: fontController.typeselected(
                      // fontFamily: 'Alexandria',
                      color: Colors.white,
                      fontSize: 16 + sizeFontController.addorNotAdd,
                    ),
                  ),
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
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              'asset/164c3ea920 1.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Center(
                    child: SvgPicture.asset(
                      'asset/Iraqi-Laws-Guide.svg',
                      height: 232,
                      width: 232,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //--------------------------------------------------------------------
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width:
                          MediaQuery.of(context).size.width >= 388 ? 351 : 313,
                      decoration: ShapeDecoration(
                        color: Color(0xFFEEEDED).withOpacity(0.15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              // bottomLeft: Radius.circular(5),
                              // topLeft: Radius.circular(5),
                              ),
                          side: BorderSide(width: 1, color: Color(0xFF095A17)),
                        ),
                      ),
                      child:
                          /* secentPartLowPage(
                        textCOlors: Colors.black.withOpacity(0.5),
                        isRadios: false,
                        colors:
                            Color.fromARGB(253, 188, 187, 187).withOpacity(0.1),
                        searchMark: false,
                        textHighlight: 'ادخل رقم المادة القانونية لعرضها',
                        bottonText: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'asset/four/search.png',
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ),*/
                          Container(
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Container(
                                height: 48,
                                width: 81,
                                decoration: BoxDecoration(
                                  color: grencolor,
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(
                                      'asset/four/search.png',
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width < 385
                                  ? 220
                                  : 258,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(253, 188, 187, 187)
                                    .withOpacity(0.1),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, bottom: 5, right: 2),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        style: fontController.typeselected(
                                            // fontFamily: 'Alexandria',
                                            color: Color(0xFFB1B5BC),
                                            fontSize: 12 +
                                                sizeFontController.addorNotAdd),
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText:
                                              'ادخل رقم المادة القانونية لعرضها',
                                          hintStyle:
                                              fontController.typeselected(
                                                  // fontFamily: 'Alexandria',
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  fontSize: 12 +
                                                      sizeFontController
                                                          .addorNotAdd),
                                        ),
                                        onChanged: (value) {
                                          homeController
                                              .changeValueOfScrech(value);
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: false == true
                                        ? Icon(
                                            Icons.search,
                                            color: Color(0xFFB1B5BC),
                                            size: 25,
                                          )
                                        : Text('  '),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //------------------------------------------------------------------
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Vibration.vibrate(duration: 100);
                        Get.to(moreLowsPage(
                          lowIndex: homeController.valueOfSearch1!,
                        ));
                      },
                      child: Container(
                        width: 276,
                        height: 51,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF095A17)),
                        child: Center(
                          child: Text(
                            'عرض المادة',
                            style: fontController.typeselected(
                              fontSize: 18 + sizeFontController.addorNotAdd,
                              //  fontFamily: 'Alexandria',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Vibration.vibrate(duration: 100);
                        homeController.valueOfSearch1 = 'all';
                        Get.to(moreLowsPage(
                          lowIndex: homeController.valueOfSearch1!,
                        ));
                      },
                      child: Container(
                        width: 276,
                        height: 51,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF095A17).withOpacity(0.8),
                        ),
                        child: Center(
                          child: Text(
                            'قراءة القانون بالكامل',
                            style: fontController.typeselected(
                              fontSize: 18 + sizeFontController.addorNotAdd,
                              // fontFamily: 'Alexandria',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
