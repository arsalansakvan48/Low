import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lastNewsPage/allLastNewsPage/allLastNewsPart.dart';
import 'package:vibration/vibration.dart';

import '../../../controller/Controller.dart';
import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class cardFourdPart extends StatelessWidget {
  cardFourdPart({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageurl,
  });
  String title;
  String subtitle;
  String imageurl;

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());

    return GestureDetector(
      onTap: () {
        Vibration.vibrate(duration: 100);
        Get.to(allLastNewsPart(), arguments: [
          title,
          subtitle,
          imageurl,
        ]);
      },
      child: Container(
        width: 400,
        height: 105,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(2, 2),
              blurRadius: 4,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 15,
                      bottom: 1.5,
                      left: MediaQuery.of(context).size.width > 411 ? 35 : 15),
                  child: MyHoverText(
                    title: title,
                    fontController: fontController,
                    sizeFontController: sizeFontController,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width > 411 ? 35 : 12.5,
                      top: 5),
                  child: Container(
                    width: 209,
                    height: 23,
                    child: Text(
                      subtitle,
                      textAlign: TextAlign.right,
                      style: fontController.typeselected(
                        color: Color.fromARGB(255, 129, 124, 124),
                        fontSize: 8 + sizeFontController.addorNotAdd,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 0, top: 10),
                  child: Container(
                    height: 17,
                    width: 62,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: grencolor,
                    ),
                    child: Center(
                      child: Text(
                        'اقرا المزيد',
                        style: fontController.typeselected(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 8.5 + sizeFontController.addorNotAdd,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, right: 5, bottom: 5, left: 2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: MediaQuery.of(context).size.width >= 385 ? 90.h : 90,
                  width: MediaQuery.of(context).size.width >= 385 ? 90.h : 87,
                  color: Colors.black,
                  child: Image.asset(
                    imageurl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHoverText extends StatefulWidget {
  final String title;
  final FontController fontController;
  final SizeFontController sizeFontController;

  const MyHoverText({
    Key? key,
    required this.title,
    required this.fontController,
    required this.sizeFontController,
  }) : super(key: key);

  @override
  _MyHoverTextState createState() => _MyHoverTextState();
}

class _MyHoverTextState extends State<MyHoverText> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    bool isHovered = homeController.hover;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => handleHover(true),
      //onHover: (_) => handleHover(true),
      //  onExit: (_) => handleHover(false),
      child: GestureDetector(
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 208,
            height: 25,
            child: Text(
              widget.title,
              textAlign: TextAlign.right,
              style: widget.fontController.typeselected(
                color: isHovered ? grencolor : grencolor,
                fontSize: 9 + widget.sizeFontController.addorNotAdd,
                fontWeight: FontWeight.w700,
                decoration:
                    isHovered ? TextDecoration.underline : TextDecoration.none,
                decorationColor: Colors.green,
                decorationThickness: isHovered ? 2.0 : 0.0,
                height: isHovered ? 1.0 : 1.0, // Adjust the height when hovered
              ),
            ),
          ),
        ),
        /* onTap: () {
          
        },*/
      ),
    );
  }

  void handleHover(bool isHovered1) {
    setState(() {
      homeController.hover = isHovered1;
    });
  }
}
