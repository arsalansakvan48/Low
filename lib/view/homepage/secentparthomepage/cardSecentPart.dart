import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class cardSecentPart extends StatefulWidget {
  cardSecentPart({
    Key? key,
    required this.image,
    required this.title,
    required this.sizeHW,
    required this.function,
  }) : super(key: key);

  final String image;
  final String title;
  final bool sizeHW;
  final Function() function;

  @override
  State<cardSecentPart> createState() => _cardSecentPartState();
}

class _cardSecentPartState extends State<cardSecentPart> {
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Material(
        color: grencolor,
        borderRadius: BorderRadius.circular(widget.sizeHW ? 8 : 4),
        child: InkWell(
          onTap: widget.function,
          borderRadius: BorderRadius.circular(widget.sizeHW ? 8 : 4),
          splashColor: Colors
              .transparent, // Set to transparent to see the background color
          child: Container(
            height: widget.sizeHW == true ? 103 : 109,
            width: widget.sizeHW == true ? 97 : 128,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Image.asset(
                    widget.image,
                    width: 50,
                    height: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.title,
                      textAlign: TextAlign.center,
                      style: fontController.typeselected(
                        //  fontFamily: 'Alexandria',
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 11 + sizeFontController.addorNotAdd,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
