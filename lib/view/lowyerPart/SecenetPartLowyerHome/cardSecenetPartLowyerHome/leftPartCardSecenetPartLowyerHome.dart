import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';

import '../../../../controller/TypeFontController.dart';

class leftPartCardSecenetPartLowyerHome extends StatelessWidget {
  const leftPartCardSecenetPartLowyerHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            //   color: Colors.blue,
            width: 85,
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                bottomConectNow(
                  color: grencolor,
                  title: 'اتصل الان',
                ),
                SizedBox(
                  height: 12,
                ),
                bottomConectNow(
                  color: grencolor.withOpacity(0.75),
                  title: 'تفاصيل',
                ),
                SizedBox(
                  height: 7,
                ),
              ],
            ),
          ),
        ),
        Container(
          //  color: Colors.yellowAccent,
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                'الموقع',
                style: fontController.typeselected(
                  fontSize: 6,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Container(
                height: 9.55,
                width: 14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.5),
                  color: grencolor.withOpacity(0.8),
                ),
                child: Center(
                    child: Image.asset(
                  'asset/Path 12411.png',
                  width: 6.7,
                  height: 6.53,
                )),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'المشاهدات 451',
                style: fontController.typeselected(
                  fontSize: 6,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 9.55,
                width: 14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.5),
                  color: grencolor.withOpacity(0.8),
                ),
                child: Center(
                    child: Image.asset(
                  'asset/Path 12410.png',
                  width: 10.27,
                  height: 4.78,
                )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class bottomConectNow extends StatelessWidget {
  bottomConectNow({
    super.key,
    required this.color,
    required this.title,
  });
  var color;
  String title;
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 2),
      child: GestureDetector(
        //founction
        onTap: () {},
        child: Container(
          height: 17,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color,
          ),
          child: Center(
            child: Text(
              title,
              style: fontController.typeselected(
                // fontFamily: 'Alexandria',
                color: Colors.white,
                fontSize: 9,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
