import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/controller/sizeFontController.dart';
import 'package:lowproject/view/color.dart';
import 'package:vibration/vibration.dart';

import '../../../controller/TypeFontController.dart';

class changeFontSize extends StatefulWidget {
  changeFontSize({super.key});

  @override
  State<changeFontSize> createState() => _changeFontSizeState();
  double range = 0.0;
}

class _changeFontSizeState extends State<changeFontSize> {
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
            'تغير حجم الخط',
            style: fontController.typeselected(
              // fontFamily: 'Alexandria',
              fontSize: 24 + sizeFontController.addorNotAdd,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
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
        leading: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Image.asset('asset/one/Vector (8).png'),
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'قم بأختيار حجم الخط',
                style: fontController.typeselected(
                  color: grencolor,
                  fontSize: 25 + sizeFontController.addorNotAdd,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 15),
              child: Slider(
                activeColor: Colors.green,
                inactiveColor: Colors.green.withOpacity(0.4),
                max: 20,
                min: -20,
                value: widget.range,
                onChanged: (value) {
                  setState(() {
                    widget.range = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Vibration.vibrate(duration: 100);
              },
              child: Container(
                height: MediaQuery.of(context).size.width > 391 ? 255 : 222,
                width: MediaQuery.of(context).size.width > 391 ? 389 : 333,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: grencolor,
                ),
                child: Center(
                  child: Text(
                    'تغيير نوع الخط',
                    style: fontController.typeselected(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 36 + (widget.range * 0.1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Vibration.vibrate(duration: 100);
                  sizeFontController.sizeControllerMethod(widget.range);
                });
              },
              child: Container(
                width: 389,
                height: 52,
                decoration: ShapeDecoration(
                  color: Color(0xFF095A17),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
                child: Center(
                  child: Text(
                    'حفظ',
                    style: fontController.typeselected(
                      color: Colors.white,
                      fontSize: 30 + sizeFontController.addorNotAdd,
                      // fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width > 391 ? 75 : 40,
            ),
            Container(
              height: 550,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                reverse: true,
                itemCount: 1,
                itemBuilder: (context, index) => Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 251,
                        top: MediaQuery.of(context).size.width > 391 ? 101 : 60,
                      ),
                      child: Container(
                        width: 348,
                        height: 292,
                        decoration: ShapeDecoration(
                          color: Color(0xFF095A17),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Container(
                        width: 418,
                        height: 362,
                        decoration: ShapeDecoration(
                          color: Color(0xFF096419),
                          shape: OvalBorder(),
                          shadows: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 20,
                              offset: Offset(10, 0),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
