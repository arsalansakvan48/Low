import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/color.dart';
import 'package:vibration/vibration.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class changeTypeFont extends StatefulWidget {
  changeTypeFont({super.key});

  @override
  State<changeTypeFont> createState() => _changeTypeFontState();
}

class _changeTypeFontState extends State<changeTypeFont> {
  var list = [true, false, false, false, false];
  //HomeController homeController = Get.put(HomeController());
  FontController fontController = Get.put(FontController());
  SizeFontController sizeFontController = Get.put(SizeFontController());

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    int selected = 0;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: grencolor,
        title: Center(
          child: Text(
            'تغيير نوع الخط',
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
          child: Image.asset('asset/three/pen.png'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width < 385 ? 30 : 60,
          ),
          Container(
            height: MediaQuery.of(context).size.width < 385 ? 450 : 500,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.width < 385 ? 15 : 25,
                  left: 20,
                  right: 20,
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Vibration.vibrate(duration: 100);
                      fontController.changetype = index;
                      fontController.changetype;
                    });
                  },
                  child: cardChangeTypeFont(
                    colors: index,
                    typeFonts: fontController.listTypeFonts[index],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Vibration.vibrate(duration: 100);
                fontController.changeTypeFonts();
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
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 31 + sizeFontController.addorNotAdd,
                    fontFamily: 'Alexandria',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class cardChangeTypeFont extends StatelessWidget {
  cardChangeTypeFont({
    super.key,
    required this.colors,
    required this.typeFonts,
  });
  var colors;
  var typeFonts;
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Container(
      width: 389,
      height: 69,
      decoration: ShapeDecoration(
        color: Color(0xFF095A17),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 45,
            height: 45,
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
          ),
          Text(
            'مثال على هذا الخط',
            style: typeFonts(
              color: Colors.white,
              fontSize: 22.0 + sizeFontController.addorNotAdd,
              fontWeight: FontWeight.w600,
              height: 0.0,
            ),

            /*   TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'Alexandria',
              fontWeight: FontWeight.w600,
              height: 0,
            ),*/
          ),
          Container(
            width: 82,
            height: 69,
            decoration: ShapeDecoration(
              color: Color(0xFF418E43),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
            ),
            child: Stack(children: [
              Center(
                child: Container(
                  width: 48,
                  height: 45,
                  decoration: ShapeDecoration(
                    color: fontController.changetype == colors
                        ? Color(0xFF22C227)
                        : Color(0xFF535353),
                    shape: OvalBorder(),
                  ),
                  child: Icon(
                    Icons.check_sharp,
                    color: Colors.white,
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
