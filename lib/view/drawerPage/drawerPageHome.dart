import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/applicationLastVertion/applicationLastVertion.dart';
import 'package:lowproject/view/drawerPage/homeTopDrawerPage.dart';
import 'package:lowproject/view/lowyerLoginPage/lowyerLoginPage.dart';
import 'package:vibration/vibration.dart';

import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class drawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<drawerPage> {
  late Color _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = Colors.white.withOpacity(0.001);

    // Delay the animation to start after the page is built
    Future.delayed(Duration(milliseconds: 425), () {
      setState(() {
        _backgroundColor = Colors.white;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedContainer(
        duration: Duration(milliseconds: 425),
        color: _backgroundColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: MediaQuery.of(context).size.width < 391 ? 330 : 387,
                    height: MediaQuery.of(context).size.width < 391 ? 755 : 865,
                    decoration: ShapeDecoration(
                      color: Color(0xFF095A17),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          topLeft: Radius.circular(60),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: homeTopDrawerPage(),
                          ),
                          CardEveryPageDrawerPage(
                            text: 'القوانين العراقية',
                            image: Image.asset(
                              'asset/law 1.png',
                              width: 35,
                              height: 35,
                            ),
                            function: () {
                              Vibration.vibrate(duration: 100);
                            },
                          ),
                          CardEveryPageDrawerPage(
                            text: 'تسجيل حساب كـ محامي',
                            image: Image.asset(
                              'asset/lawyer.png',
                              height: 42,
                              width: 42,
                            ),
                            function: () {
                              Vibration.vibrate(duration: 100);
                              Get.to(lowyerLoginPage());
                            },
                          ),
                          CardEveryPageDrawerPage(
                            text: 'التنبيهات',
                            image: Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                            function: () {
                              Vibration.vibrate(duration: 100);
                            },
                          ),
                          CardEveryPageDrawerPage(
                            text: 'تغيير اللغة',
                            image: Image.asset(
                              'asset/sIcon/Vector-1.png',
                              width: 30,
                              height: 30,
                            ),
                            function: () {
                              Vibration.vibrate(duration: 100);
                            },
                          ),
                          CardEveryPageDrawerPage(
                            text: 'أشتراكات المحامي',
                            image: Image.asset(
                              'asset/legal-service.png',
                              height: 43,
                              width: 43,
                            ),
                            function: () {
                              Vibration.vibrate(duration: 100);
                            },
                          ),
                          CardEveryPageDrawerPage(
                            text: 'الشروط والأحكام',
                            image: Stack(
                              children: [
                                Icon(
                                  Icons.circle_outlined,
                                  color: Colors.white,
                                  size: 34,
                                ),
                                Icon(
                                  Icons.error_outline,
                                  color: Colors.white,
                                  size: 34,
                                ),
                              ],
                            ),
                            function: () {
                              Vibration.vibrate(duration: 100);
                              Get.to(applicationLastVertion());
                            },
                          ),
                          CardEveryPageDrawerPage(
                            text: 'سياسة الأستخدام',
                            image: Icon(
                              Icons.warning_amber_rounded,
                              color: Colors.white,
                              size: 35,
                            ),
                            function: () {
                              Vibration.vibrate(duration: 100);
                            },
                          ),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardEveryPageDrawerPage extends StatelessWidget {
  CardEveryPageDrawerPage({
    Key? key,
    required this.image,
    required this.text,
    required this.function,
  });
  String text;
  var image;
  var function;

  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Padding(
      padding: const EdgeInsets.only(right: 11, top: 30),
      child: GestureDetector(
        onTap: function,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                text,
                style: fontController.typeselected(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width > 391
                      ? 21 + sizeFontController.addorNotAdd
                      : 16 + sizeFontController.addorNotAdd,
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              image
            ],
          ),
        ),
      ),
    );
  }
}
