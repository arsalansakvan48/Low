import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/color.dart';
import 'package:vibration/vibration.dart';

import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class propartyOfAllCatagoryHome extends StatelessWidget {
  propartyOfAllCatagoryHome(
      {super.key, required list1, required this.titleAppbar});
  var list1;
  String titleAppbar;
//servess and right and secentparthomepage and thirdPartHomePage
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: grencolor,
        title: Center(
          child: Text(
            titleAppbar,
            style: fontController.typeselected(
                // fontFamily: 'Alexandria',
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
        leading: Text('  '),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 500,
                width: 411,
                child: ListView.builder(
                  itemCount: homeController.listright.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: cardpropartyOfAllCatagoryHome(
                        listtoptext:
                            homeController.listright[index][0] as String,
                        listbottomtext:
                            homeController.listright[index][1] as String,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class cardpropartyOfAllCatagoryHome extends StatelessWidget {
  cardpropartyOfAllCatagoryHome({
    super.key,
    required this.listbottomtext,
    required this.listtoptext,
  });
  var listtoptext;
  var listbottomtext;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        topCardpropartyOfAllCatagoryHome(
          topText: listtoptext as String,
        ),
        bottomCardpropartyOfAllCatagoryHome(
          bottomtext: listbottomtext as String,
        ),
      ],
    );
  }
}

class bottomCardpropartyOfAllCatagoryHome extends StatelessWidget {
  bottomCardpropartyOfAllCatagoryHome({super.key, required this.bottomtext});
  String bottomtext;
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Container(
      width: 410,
      height: 45,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2, 2),
            blurRadius: 4,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width < 385 ? 240 : 280,
            child: Text(
              bottomtext,
              textAlign: TextAlign.right,
              style: fontController.typeselected(
                  color: Colors.black,
                  fontSize: 10 + sizeFontController.addorNotAdd,
                  // fontFamily: 'Alexandria',
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFFB46810),
            ),
            child: Center(
              child: Text(
                '.ج',
                style: fontController.typeselected(
                    color: Colors.white,
                    fontSize: 9,
                    //   fontFamily: 'Alexandria',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

class topCardpropartyOfAllCatagoryHome extends StatelessWidget {
  topCardpropartyOfAllCatagoryHome({super.key, required this.topText});
  var topText;
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Container(
      width: 410,
      height: 36,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2, 2),
            blurRadius: 4,
          ),
        ],
        color: grencolor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: MediaQuery.of(context).size.width < 385 ? 270 : 280,
            child: Text(
              topText,
              textAlign: TextAlign.right,
              style: fontController.typeselected(
                color: Colors.white,
                fontSize: 10 + sizeFontController.addorNotAdd,
                // fontFamily: 'Alexandria',
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                '.س',
                style: fontController.typeselected(
                    color: Colors.black,
                    fontSize: 9,
                    // fontFamily: 'Alexandria',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
