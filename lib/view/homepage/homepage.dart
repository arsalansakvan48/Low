import 'package:flutter/material.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/drawerPage/drawerPageHome.dart';
import 'package:lowproject/view/homepage/firstparthomepage/firstparthomepage.dart';
import 'package:lowproject/view/homepage/fourthparthomrpage/fourthparthomrpage.dart';
import 'package:lowproject/view/homepage/secentparthomepage/secentparthomepage.dart';
import 'package:lowproject/view/homepage/thirdPartHomePage/thirdPartHomePage.dart';
import 'package:lowproject/view/homepage/topeverypart.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/searchPart/searchPart.dart';
import 'package:vibration/vibration.dart';

import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class homePage extends StatelessWidget {
  const homePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Container(
      color: background,
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
                backgroundColor: grencolor,
                title: Center(
                  child: Text(
                    'الرئيسية',
                    style: fontController.typeselected(
                        // fontFamily: 'Alexandria',
                        fontSize: 21 + sizeFontController.addorNotAdd,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      Vibration.vibrate(duration: 100);
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return drawerPage();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeInOut;
                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                          transitionDuration: const Duration(milliseconds: 700),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
                leading: GestureDetector(
                  onTap: () {
                    Vibration.vibrate(duration: 100);
                    Get.to(searchPart());
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Image.asset('asset/navigation.png'),
                    ),
                  ),
                )),
            //--------------------------------
            const SizedBox(
              height: 10,
            ),
            topeverypart(
              title: 'القوانین',
              color: true,
              function: () {
                Vibration.vibrate(duration: 100);
                homeController.changescreen(5);
              },
            ),
            const SizedBox(
              height: 2.5,
            ),
            firstparthomepage(),
            const SizedBox(
              height: 2.5,
            ),
            topeverypart(
              title: 'حقوقک',
              color: true,
              function: () {
                Vibration.vibrate(duration: 100);
                homeController.changescreen(4);
              },
            ),
            const SizedBox(
              height: 2.5,
            ),
            secentparthomepage(),
            const SizedBox(
              height: 2.5,
            ),
            topeverypart(
              title: 'الخدمات',
              color: true,
              function: () {
                Vibration.vibrate(duration: 100);
                homeController.changescreen(2);
              },
            ),
            const SizedBox(
              height: 2.5,
            ),
            thirdPartHomePage(),
            const SizedBox(
              height: 2.5,
            ),
            topeverypart(
              title: 'اخر اخبار',
              color: true,
              function: () {
                Vibration.vibrate(duration: 100);
                homeController.changescreen(1);
              },
            ),
            const SizedBox(
              height: 2.5,
            ),
            fourthPartHomrPage(),
          ],
        ),
      ),
    );
  }
}
