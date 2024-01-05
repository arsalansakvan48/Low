import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/view/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vibration/vibration.dart';
import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class conectMePage extends StatelessWidget {
  const conectMePage({super.key});

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
            'تابعونا',
            style: fontController.typeselected(
                //  fontFamily: 'Alexandria',
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
        // physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 850,
              child: Stack(
                children: [
                  Column(
                    children: [],
                  ),
                  Image.asset(
                    'asset/fdf0695374 1.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        'asset/sharing 1.png',
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 110),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'تابعونا على',
                        style: fontController.typeselected(
                            //  fontFamily: 'Alexandria',
                            color: grencolor,
                            fontSize: 21 + sizeFontController.addorNotAdd,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 155),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'مواقع التواصل الأجتماعي',
                        style: fontController.typeselected(
                            //  fontFamily: 'Alexandria',
                            color: Color(0xFF514F4F),
                            fontSize: 20 + sizeFontController.addorNotAdd,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 242,
                      height: 590,
                      decoration: BoxDecoration(
                        color: grencolor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            50,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width > 391
                                    ? 90
                                    : 60,
                                bottom: MediaQuery.of(context).size.width > 391
                                    ? 55
                                    : 100),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                soshialMediaCard(
                                  icons: SvgPicture.string(
                                      '''<svg width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <path d="M36 18.11C36 8.10814 27.9411 0 18 0C8.05888 0 0 8.10814 0 18.11C0 27.1493 6.58234 34.6415 15.1875 36V23.345H10.6172V18.11H15.1875V14.1202C15.1875 9.58134 17.8748 7.07424 21.9863 7.07424C23.9557 7.07424 26.0156 7.42795 26.0156 7.42795V11.8847H23.7458C21.5098 11.8847 20.8125 13.2807 20.8125 14.7129V18.11H25.8047L25.0066 23.345H20.8125V36C29.4177 34.6415 36 27.1493 36 18.11Z" fill="#095A17"/>
                                  </svg>
                                  '''),
                                  function: () {
                                    Vibration.vibrate(duration: 100);
                                  },
                                ),
                                soshialMediaCard(
                                  icons: SvgPicture.string(
                                      '''<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M24.544 5.536C24.1643 5.536 23.793 5.64861 23.4773 5.85958C23.1616 6.07055 22.9155 6.37041 22.7702 6.72125C22.6248 7.07208 22.5868 7.45813 22.6609 7.83057C22.735 8.20302 22.9178 8.54513 23.1864 8.81365C23.4549 9.08216 23.797 9.26502 24.1694 9.33911C24.5419 9.41319 24.9279 9.37517 25.2788 9.22985C25.6296 9.08453 25.9294 8.83844 26.1404 8.5227C26.3514 8.20695 26.464 7.83574 26.464 7.456C26.464 6.94678 26.2617 6.45843 25.9016 6.09836C25.5416 5.73829 25.0532 5.536 24.544 5.536ZM31.904 9.408C31.8729 8.08048 31.6243 6.76704 31.168 5.52C30.7612 4.45301 30.128 3.48685 29.312 2.688C28.5197 1.86788 27.5513 1.23868 26.48 0.848C25.2362 0.377857 23.9214 0.123536 22.592 0.0959999C20.896 -8.9407e-08 20.352 0 16 0C11.648 0 11.104 -8.9407e-08 9.408 0.0959999C8.07864 0.123536 6.76375 0.377857 5.52 0.848C4.45068 1.24264 3.48309 1.8713 2.688 2.688C1.86788 3.48028 1.23868 4.4487 0.848 5.52C0.377857 6.76375 0.123536 8.07864 0.0959999 9.408C-8.9407e-08 11.104 0 11.648 0 16C0 20.352 -8.9407e-08 20.896 0.0959999 22.592C0.123536 23.9214 0.377857 25.2362 0.848 26.48C1.23868 27.5513 1.86788 28.5197 2.688 29.312C3.48309 30.1287 4.45068 30.7574 5.52 31.152C6.76375 31.6221 8.07864 31.8765 9.408 31.904C11.104 32 11.648 32 16 32C20.352 32 20.896 32 22.592 31.904C23.9214 31.8765 25.2362 31.6221 26.48 31.152C27.5513 30.7613 28.5197 30.1321 29.312 29.312C30.1316 28.5161 30.7653 27.5491 31.168 26.48C31.6243 25.233 31.8729 23.9195 31.904 22.592C31.904 20.896 32 20.352 32 16C32 11.648 32 11.104 31.904 9.408ZM29.024 22.4C29.0124 23.4156 28.8284 24.4219 28.48 25.376C28.2245 26.0723 27.8142 26.7015 27.28 27.216C26.761 27.7448 26.1332 28.1543 25.44 28.416C24.4859 28.7644 23.4796 28.9484 22.464 28.96C20.864 29.04 20.272 29.056 16.064 29.056C11.856 29.056 11.264 29.056 9.664 28.96C8.60943 28.9797 7.55935 28.8174 6.56 28.48C5.89725 28.2049 5.29817 27.7965 4.8 27.28C4.26894 26.766 3.86375 26.1363 3.616 25.44C3.22537 24.4722 3.00871 23.4431 2.976 22.4C2.976 20.8 2.88 20.208 2.88 16C2.88 11.792 2.88 11.2 2.976 9.6C2.98317 8.56169 3.17272 7.53271 3.536 6.56C3.81768 5.88466 4.25002 5.28265 4.8 4.8C5.2861 4.24987 5.88686 3.81295 6.56 3.52C7.53528 3.16807 8.5632 2.98413 9.6 2.976C11.2 2.976 11.792 2.88 16 2.88C20.208 2.88 20.8 2.88 22.4 2.976C23.4156 2.98765 24.4219 3.17159 25.376 3.52C26.1031 3.78984 26.7557 4.22855 27.28 4.8C27.8043 5.29149 28.214 5.89237 28.48 6.56C28.8356 7.53429 29.0197 8.56285 29.024 9.6C29.104 11.2 29.12 11.792 29.12 16C29.12 20.208 29.104 20.8 29.024 22.4ZM16 7.792C14.3773 7.79516 12.7919 8.27924 11.4442 9.18307C10.0966 10.0869 9.04701 11.3699 8.42821 12.87C7.80942 14.3701 7.64916 16.0199 7.96767 17.6111C8.28618 19.2022 9.06918 20.6633 10.2177 21.8096C11.3663 22.9559 12.8288 23.736 14.4206 24.0514C16.0123 24.3668 17.6619 24.2034 19.1607 23.5817C20.6596 22.9599 21.9406 21.9079 22.8418 20.5585C23.743 19.209 24.224 17.6227 24.224 16C24.2261 14.9202 24.0147 13.8506 23.602 12.8527C23.1892 11.8549 22.5833 10.9485 21.819 10.1857C21.0547 9.42287 20.1471 8.81868 19.1485 8.40789C18.1498 7.99709 17.0798 7.78778 16 7.792ZM16 21.328C14.9462 21.328 13.9161 21.0155 13.0399 20.4301C12.1637 19.8446 11.4808 19.0125 11.0776 18.0389C10.6743 17.0654 10.5688 15.9941 10.7744 14.9606C10.98 13.927 11.4874 12.9777 12.2325 12.2325C12.9777 11.4874 13.927 10.98 14.9606 10.7744C15.9941 10.5688 17.0654 10.6743 18.0389 11.0776C19.0125 11.4808 19.8446 12.1637 20.4301 13.0399C21.0155 13.9161 21.328 14.9462 21.328 16C21.328 16.6997 21.1902 17.3925 20.9224 18.0389C20.6547 18.6854 20.2622 19.2727 19.7675 19.7675C19.2727 20.2622 18.6854 20.6547 18.0389 20.9224C17.3925 21.1902 16.6997 21.328 16 21.328Z" fill="#095A17"/>
                                      </svg>
                                      '''),
                                  function: () {
                                    Vibration.vibrate(duration: 100);
                                  },
                                ),
                                soshialMediaCard(
                                  icons: SvgPicture.string(
                                      '''<svg width="32" height="26" viewBox="0 0 32 26" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M32 3.11498C30.7973 3.63573 29.5255 3.97997 28.224 4.13701C29.5971 3.3183 30.626 2.03031 31.12 0.511977C29.8297 1.2786 28.4172 1.81874 26.944 2.10891C25.9593 1.04307 24.6479 0.333594 23.2157 0.0917464C21.7834 -0.150101 20.3113 0.0893622 19.0301 0.772579C17.7489 1.4558 16.7311 2.54412 16.1364 3.86687C15.5417 5.18962 15.4037 6.67196 15.744 8.08143C13.1351 7.94973 10.5831 7.27171 8.25385 6.09143C5.92459 4.91116 3.87015 3.25501 2.224 1.2306C1.64662 2.23693 1.34323 3.37659 1.344 4.53624C1.34195 5.61319 1.60675 6.67392 2.11481 7.62401C2.62287 8.5741 3.35843 9.38406 4.256 9.98178C3.21276 9.95345 2.19182 9.67405 1.28 9.16735V9.24719C1.28782 10.7561 1.81759 12.216 2.7797 13.38C3.74182 14.544 5.07721 15.3405 6.56 15.6349C5.98921 15.8083 5.3966 15.8997 4.8 15.9064C4.38702 15.9016 3.97508 15.8642 3.568 15.7946C3.99026 17.0926 4.8074 18.227 5.90572 19.0398C7.00404 19.8527 8.32892 20.3036 9.696 20.3299C7.38753 22.1428 4.53741 23.1323 1.6 23.1405C1.06518 23.1422 0.530777 23.1102 0 23.0447C2.99909 24.9774 6.4941 26.0033 10.064 25.999C12.5275 26.0245 14.9714 25.5599 17.253 24.6322C19.5346 23.7044 21.608 22.3323 23.3523 20.5958C25.0966 18.8593 26.4767 16.7933 27.4121 14.5185C28.3474 12.2437 28.8193 9.80568 28.8 7.34684C28.8 7.07536 28.8 6.78792 28.8 6.50047C30.0555 5.56596 31.1384 4.42035 32 3.11498Z" fill="#095A17"/>
                                      </svg>
                                      '''),
                                  function: () {
                                    Vibration.vibrate(duration: 100);
                                  },
                                ),
                                soshialMediaCard(
                                  icons: SvgPicture.string(
                                      '''<svg width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M34.9356 11.9343C34.9356 11.9343 34.9356 11.9343 34.9356 11.844C33.6648 8.37111 31.359 5.37267 28.33 3.25434C25.301 1.136 21.6951 0 18 0C14.3049 0 10.699 1.136 7.67002 3.25434C4.64105 5.37267 2.3352 8.37111 1.06439 11.844C1.06439 11.844 1.06439 11.844 1.06439 11.9343C-0.354798 15.8534 -0.354798 20.1466 1.06439 24.0657C1.06439 24.0657 1.06439 24.0657 1.06439 24.156C2.3352 27.6289 4.64105 30.6273 7.67002 32.7457C10.699 34.864 14.3049 36 18 36C21.6951 36 25.301 34.864 28.33 32.7457C31.359 30.6273 33.6648 27.6289 34.9356 24.156C34.9356 24.156 34.9356 24.156 34.9356 24.0657C36.3548 20.1466 36.3548 15.8534 34.9356 11.9343ZM4.00423 21.6105C3.3788 19.2442 3.3788 16.7558 4.00423 14.3895H7.35888C7.07037 16.7878 7.07037 19.2122 7.35888 21.6105H4.00423ZM5.48316 25.2211H8.00817C8.43151 26.8311 9.0366 28.3876 9.81175 29.8606C8.04298 28.6546 6.5644 27.0698 5.48316 25.2211ZM8.00817 10.7789H5.48316C6.54884 8.93591 8.00852 7.35158 9.75764 6.1394C9.00114 7.61474 8.41423 9.1712 8.00817 10.7789ZM16.1603 31.9006C13.9451 30.2734 12.3893 27.9023 11.7777 25.2211H16.1603V31.9006ZM16.1603 21.6105H11.0021C10.6655 19.2153 10.6655 16.7847 11.0021 14.3895H16.1603V21.6105ZM16.1603 10.7789H11.7777C12.3893 8.0977 13.9451 5.72657 16.1603 4.09945V10.7789ZM30.4447 10.7789H27.9197C27.4964 9.16892 26.8913 7.61239 26.1161 6.1394C27.8849 7.34544 29.3635 8.93023 30.4447 10.7789ZM19.7675 4.09945C21.9827 5.72657 23.5385 8.0977 24.1502 10.7789H19.7675V4.09945ZM19.7675 31.9006V25.2211H24.1502C23.5385 27.9023 21.9827 30.2734 19.7675 31.9006ZM24.9257 21.6105H19.7675V14.3895H24.9257C25.2623 16.7847 25.2623 19.2153 24.9257 21.6105ZM26.1702 29.8606C26.9454 28.3876 27.5505 26.8311 27.9738 25.2211H30.4988C29.4176 27.0698 27.939 28.6546 26.1702 29.8606ZM31.9236 21.6105H28.569C28.7157 20.4127 28.7879 19.2068 28.7854 18C28.7874 16.7932 28.7151 15.5874 28.569 14.3895H31.9236C32.5491 16.7558 32.5491 19.2442 31.9236 21.6105Z" fill="#095A17"/>
                                      </svg>
                                      '''),
                                  function: () {
                                    Vibration.vibrate(duration: 100);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Positioned(
                                    left: 129,
                                    top: 720,
                                    child: Text(
                                      'جميع الحقوق التطبيق محفوظة ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Alexandria',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '2024',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontFamily: 'Alexandria',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    391
                                                ? 3
                                                : 2),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: MediaQuery.of(context)
                                                              .size
                                                              .width >
                                                          391
                                                      ? 3
                                                      : 2),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        391
                                                    ? 11
                                                    : 10,
                                                height: MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        391
                                                    ? 11
                                                    : 10,
                                                decoration: ShapeDecoration(
                                                  color: Colors.white,
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              right: 0,
                                              bottom: 0,
                                              child: Center(
                                                child: Text(
                                                  'c',
                                                  style: TextStyle(
                                                    color: Color(0xFF095A17),
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width >
                                                                391
                                                            ? 11
                                                            : 9,
                                                    fontFamily: 'Alexandria',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              // Use FractionalOffset to center the Positioned widget
                                              // Adjust the values as needed
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        'لـدليل القوانين العراقية ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontFamily: 'Alexandria',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class soshialMediaCard extends StatelessWidget {
  soshialMediaCard({super.key, required this.icons, required this.function});
  Widget icons;
  var function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.white,
            ),
            child: Center(child: icons)),
      ),
    );
  }
}
