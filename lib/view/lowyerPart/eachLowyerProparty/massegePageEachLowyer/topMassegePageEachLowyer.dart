import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/controller/lowyerMassageController.dart';
import 'package:vibration/vibration.dart';

import '../../../../controller/TypeFontController.dart';
import '../../../../controller/sizeFontController.dart';

class topMassegePageEachLowyer extends StatefulWidget {
  const topMassegePageEachLowyer({super.key});

  @override
  State<topMassegePageEachLowyer> createState() =>
      _topMassegePageEachLowyerState();
}

class _topMassegePageEachLowyerState extends State<topMassegePageEachLowyer> {
  @override
  Widget build(BuildContext context) {
    LowyerMassageController lowyerMassageController =
        Get.put(LowyerMassageController());
    return Container(
      width: 388,
      height: 64,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 15,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    Vibration.vibrate(duration: 100);
                    lowyerMassageController.selectKliked = 0;
                    lowyerMassageController.changeindex();
                  });
                },
                child: card1()),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Vibration.vibrate(duration: 100);
                  lowyerMassageController.selectKliked = 1;
                  lowyerMassageController.changeindex();
                });
              },
              child: card2(),
            ),
          ),
        ],
      ),
    );
  }
}

class card1 extends StatelessWidget {
  card1({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    LowyerMassageController lowyerMassageController =
        Get.put(LowyerMassageController());
    return Container(
      width: lowyerMassageController.selected1 == true ? 186 : 150,
      height: 43,
      decoration: ShapeDecoration(
        color: lowyerMassageController.selected1 == true
            ? Color(0xFF095A17)
            : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        shadows: [
          lowyerMassageController.selected1 == true
              ? BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 15,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              : BoxShadow(color: Colors.white),
        ],
      ),
      child: Center(
        child: Text(
          'سابقة',
          style: fontController.typeselected(
            color: lowyerMassageController.selected1 == true
                ? Colors.white
                : Colors.black,
            fontSize: 20 + sizeFontController.addorNotAdd,
            //  fontFamily: 'Alexandria',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
    );
  }
}

class card2 extends StatelessWidget {
  card2({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    LowyerMassageController lowyerMassageController =
        Get.put(LowyerMassageController());

    return Container(
      width: lowyerMassageController.selected2 == true ? 186 : 150,
      height: 43,
      decoration: ShapeDecoration(
        color: lowyerMassageController.selected2 == true
            ? Color(0xFF095A17)
            : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        shadows: [
          lowyerMassageController.selected2 == true
              ? BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 15,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              : BoxShadow(color: Colors.white),
        ],
      ),
      child: Center(
        child: Text(
          'حالية',
          style: fontController.typeselected(
            color: lowyerMassageController.selected2 == true
                ? Colors.white
                : Colors.black,
            fontSize: 20 + sizeFontController.addorNotAdd,
            //fontFamily: 'Alexandria',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
    );
  }
}
