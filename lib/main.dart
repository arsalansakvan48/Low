import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/RightsPage/rightsPage.dart';
import 'package:lowproject/view/SplashPage.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/homepage/homepage.dart';
import 'package:lowproject/view/lastNewsPage/lastNewsPage.dart';
import 'package:lowproject/view/lowsPage/lowPage.dart';
import 'package:lowproject/view/lowyerPart/lowyerHomePart.dart';
import 'package:lowproject/view/servicessPage/servicessPage.dart';
import 'package:lowproject/view/setting/settingPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'controller/TypeFontController.dart';
import 'package:vibration/vibration.dart';

void main() {
  //runApp(DevicePreview(builder: (context) => const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        // builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
          ),
          useMaterial3: true,
        ),
        home: SplashPage(),
      ),
    );
  }
}

class mainPage extends StatefulWidget {
  mainPage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<mainPage> {
  int currentIndex = 6;

  @override
  final screen = [
    settingPage(),
    lastNewsPage(),
    servicessPage(),
    lowyerHomePart(),
    rightsPage(),
    lowPage(),
    homePage(),
  ];
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controler) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: screen[controler.screenindex],
          bottomNavigationBar: Container(
            width: 461,
            height: MediaQuery.of(context).size.width < 385 ? 63 : 68,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: grencolor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width < 385 ? 10 : 10,
                    ),
                    cardBottom(
                      imageurl: 'asset/Path 12399.png',
                      text: 'الإعدادات',
                      index: 0,
                      function: () {
                        setState(() {
                          controler.changescreen(0);
                          Vibration.vibrate(duration: 100);
                        });
                      },
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    cardBottom(
                      imageurl: 'asset/four/comment.png',
                      text: 'اخر اخبار',
                      index: 1,
                      function: () {
                        setState(() {
                          controler.changescreen(1);
                          Vibration.vibrate(duration: 100);
                        });
                      },
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    cardBottom(
                      imageurl: 'asset/four/apps-add.png',
                      text: 'الخدمات',
                      index: 2,
                      function: () {
                        setState(() {
                          controler.changescreen(2);
                          Vibration.vibrate(duration: 100);
                        });
                      },
                    ),
                  ],
                ),
                //  logoBottom(),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      cardBottom(
                        imageurl: 'asset/lawyer.png',
                        text: 'المحامي',
                        index: 3,
                        function: () {
                          setState(() {
                            controler.changescreen(3);
                            Vibration.vibrate(duration: 100);
                          });
                        },
                      ),
                      cardBottom(
                        imageurl: 'asset/balance-2.png',
                        text: 'حقوقک',
                        index: 4,
                        function: () {
                          setState(() {
                            controler.changescreen(4);
                            Vibration.vibrate(duration: 100);
                          });
                        },
                      ),
                      cardBottom(
                        imageurl: 'asset/four/gavel.png',
                        text: 'القوانین',
                        index: 5,
                        function: () {
                          setState(() {
                            controler.changescreen(5);
                            Vibration.vibrate(duration: 100);
                          });
                        },
                      ),
                      cardBottom(
                        imageurl: 'asset/four/home.png',
                        text: 'الرئيسية',
                        index: 6,
                        function: () {
                          setState(
                            () {
                              controler.changescreen(6);
                              Vibration.vibrate(duration: 100);
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: logoBottom(),
        );
      },
    );
  }
}

class logoBottom extends StatelessWidget {
  const logoBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width < 391 ? 55 : 65,
        height: MediaQuery.of(context).size.width < 391 ? 55 : 65,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              grencolor,
              grencolor.withOpacity(0.00),
            ],
            begin: Alignment.center,
            end: Alignment.bottomCenter,
          ),
          shape: BoxShape.circle,
          //   color: grencolor,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 3,
            ),
            child: Container(
              height: MediaQuery.of(context).size.width < 391 ? 42.5 : 50,
              width: MediaQuery.of(context).size.width < 391 ? 42.5 : 50,
              child: Image.asset(
                'asset/WhatsApp_Image_2023-10-19_at_12.15.09-removebg-preview.png',
                // height: MediaQuery.of(context).size.width < 391 ? 45 : 56,
                //  width: MediaQuery.of(context).size.width < 391 ? 45 : 56,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class cardBottom extends StatefulWidget {
  final String imageurl;
  final String text;
  final Function function;
  final int index;

  cardBottom({
    required this.imageurl,
    required this.text,
    required this.function,
    required this.index,
  });

  @override
  _CardBottomState createState() => _CardBottomState();
}

class _CardBottomState extends State<cardBottom> {
  bool shouldShake = false;

  @override
  Widget build(BuildContext context) {
    //  SizeFontController sizeFontController = Get.put(SizeFontController());
    HomeController homeController = Get.put(HomeController());
    return InkWell(
      onTap: () {
        widget.function();
        _shake();
      },
      child: Container(
        height: 65,
        // width: MediaQuery.of(context).size.width < 391 ? 47 : 53,
        width: MediaQuery.of(context).size.width > 391
            ? widget.index == homeController.screenindex
                ? 54
                : 43
            : widget.index == homeController.screenindex
                ? 50
                : 37,
        color: widget.index == homeController.screenindex
            ? Color(0xFF418E44)
            : grencolor,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width < 385 ? 12 : 10,
              ),
              _buildShakeableImage(),
              SizedBox(
                height: 3,
              ),
              _buildShakeableText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShakeableImage() {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: 500),
      tween: Tween(begin: 0.0, end: shouldShake ? -0.8 : 0.0),
      builder: (context, double value, child) {
        return Transform.translate(
          offset: Offset(
            value * 10.0, // Adjust the shaking distance
            0,
          ),
          child: child,
        );
      },
      child: Image.asset(
        widget.imageurl,
        width: MediaQuery.of(context).size.width > 391 ? 25 : 22,
        height: MediaQuery.of(context).size.width > 391 ? 25 : 22,
      ),
    );
  }

  Widget _buildShakeableText() {
    FontController fontController = Get.put(FontController());
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: 500),
      tween: Tween(begin: 0.0, end: shouldShake ? 0.8 : 0.0),
      builder: (context, double value, child) {
        return Transform.translate(
          offset: Offset(
            value * 10.0, // Adjust the shaking distance
            0,
          ),
          child: child,
        );
      },
      child: Text(
        widget.text,
        style: fontController.typeselected(
          color: Colors.white,
          fontSize: MediaQuery.of(context).size.width > 391
              ? 9 //+ sizeFontController.addorNotAdd
              : 7.5, //+ sizeFontController.addorNotAdd,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  void _shake() {
    // Trigger the shake animation
    setState(() {
      shouldShake = true;
    });

    // Reset the shake after a short delay
    Future.delayed(Duration(milliseconds: 250), () {
      setState(() {
        shouldShake = false;
      });
    });
  }
}
