import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lowyerPart/firstPartLowyerHome/payNew/payNewPage.dart';
import 'package:vibration/vibration.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class firstPartLowyerHomePage extends StatefulWidget {
  const firstPartLowyerHomePage({super.key});

  @override
  State<firstPartLowyerHomePage> createState() =>
      _firstPartLowyerHomePageState();
}

class _firstPartLowyerHomePageState extends State<firstPartLowyerHomePage> {
  late final PageController pageController;
  ScrollController _scrollController = ScrollController();
  int pageNo = 0;

  Timer? carasouelTmer;

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
      if (pageNo == 4) {
        pageNo = 0;
      }
      pageNo++;
    });
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    carasouelTmer = getTimer();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        showBtmAppBr = false;
        setState(() {});
      } else {
        showBtmAppBr = true;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    carasouelTmer?.cancel();
    pageController.dispose();
    super.dispose();
  }

  bool showBtmAppBr = true;
  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (index) {
              pageNo = index;
              setState(() {});
            },
            itemBuilder: (_, index) {
              return AnimatedBuilder(
                animation: pageController,
                builder: (ctx, child) {
                  return child!;
                },
                child: GestureDetector(
                  onTap: () {},
                  onPanDown: (d) {
                    carasouelTmer?.cancel();
                    carasouelTmer = null;
                  },
                  onPanCancel: () {
                    carasouelTmer = getTimer();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                        right: 8, left: 8, top: 24, bottom: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'asset/perfume3.png',
                          width: 80,
                          height: 100,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'افضل مجموعة للعطور',
                              style: fontController.typeselected(
                                fontSize: 10 + sizeFontController.addorNotAdd,
                                // fontFamily: 'Alexandria',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Vibration.vibrate(duration: 100);
                                Get.to(payNewPage());
                              },
                              child: Container(
                                width: 94,
                                height: 17,
                                decoration: BoxDecoration(
                                  color: grencolor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    'تسوق الآن',
                                    style: fontController.typeselected(
                                        //   fontFamily: 'Alexandria',
                                        fontSize:
                                            10 + sizeFontController.addorNotAdd,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'asset/perfume3.png',
                          width: 80,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: 5,
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) => GestureDetector(
              child: Container(
                margin: const EdgeInsets.all(2.0),
                child: Icon(
                  Icons.circle,
                  size: 12.0,
                  color: pageNo == index ? grencolor : Colors.grey.shade300,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PopUpMen extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopUpMen({Key? key, required this.menuList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}
