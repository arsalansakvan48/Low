import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/controller/TypeFontController.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/searchPart/searchPart.dart';
import 'package:lowproject/view/titleCardEveryPage.dart';
import 'package:vibration/vibration.dart';

import '../../controller/sizeFontController.dart';

class lowPage extends StatefulWidget {
  lowPage({super.key});

  @override
  State<lowPage> createState() => _lowPageState();
}

class _lowPageState extends State<lowPage> {
  HomeController homeController = Get.put(HomeController());

  // This list holds the data for the list view
  List<List> _foundUsers = [];

  @override
  initState() {
    _foundUsers = homeController.list;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<List> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = homeController.list;
    } else {
      results = homeController.list
          .where((user) => (user[0] as String)
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Perform some action with the filtered results or update the UI
    // For example, you might want to update a state variable with the filtered results
    // or trigger a rebuild of the UI.
    // For demonstration purposes, let's print the results.
    setState(() {
      _foundUsers = results;
      //print(results);
    });
  }

  @override
  Widget build(BuildContext context) {
    // HomeController homeController = Get.put(HomeController());
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      appBar: AppBar(
          backgroundColor: grencolor,
          title: Center(
            child: Text(
              'القوانین',
              style: fontController.typeselected(
                  //  fontFamily: 'Alexandria',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Vibration.vibrate(duration: 100);
                homeController.changescreen(6);
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
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              'asset/law 1.png',
              width: 56,
              height: 56,
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width < 391 ? 320 : 380,
              height: 70,
              decoration: ShapeDecoration(
                color: Color(0xFF095A17),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
              ),
              child: Center(
                child: Text(
                  'من خلال هاذا القسم يمكنكم\nالقاء نظرة على جميع القوانين في مختلفة الجوانب والمجالات',
                  textAlign: TextAlign.center,
                  style: fontController.typeselected(
                      // fontFamily: 'Alexandria',
                      color: background,
                      fontSize: MediaQuery.of(context).size.width < 391
                          ? 11 + sizeFontController.addorNotAdd
                          : 12 + sizeFontController.addorNotAdd,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //---------------------------------------------------
            /* secentPartLowPage(
              textCOlors: Colors.grey,
              isRadios: true,
              colors: grencolor.withOpacity(0.15),
              searchMark: true,
              bottonText: Text(
                'البحث',
                style: fontController.typeselected(
                    //   fontFamily: 'Alexandria',
                    color: background,
                    fontSize: 14 + sizeFontController.addorNotAdd),
              ),
              textHighlight: 'ضع هنا اسم القانين المراد البحث عنه',
            ),*/
            Container(
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      height: 48,
                      width: 81,
                      decoration: BoxDecoration(
                        color: grencolor,
                        borderRadius:
                            BorderRadius.circular(true == true ? 4 : 0),
                      ),
                      child: Center(
                        child: Text(
                          'البحث',
                          style: fontController.typeselected(
                              //   fontFamily: 'Alexandria',
                              color: background,
                              fontSize: 14 + sizeFontController.addorNotAdd),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width < 385 ? 220 : 258,
                    height: 48,
                    decoration: BoxDecoration(
                      color: grencolor.withOpacity(0.15),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, bottom: 5, right: 2),
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: fontController.typeselected(
                                  // fontFamily: 'Alexandria',
                                  color: Color(0xFFB1B5BC),
                                  fontSize:
                                      12 + sizeFontController.addorNotAdd),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'ضع هنا اسم القانين المراد البحث عنه',
                                hintStyle: fontController.typeselected(
                                    // fontFamily: 'Alexandria',
                                    color: Colors.grey,
                                    fontSize:
                                        12 + sizeFontController.addorNotAdd),
                              ),
                              onChanged: (value) {
                                // homeController.changeValueOfScrechLowPage(value);
                                _runFilter(value);
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: true == true
                              ? Icon(
                                  Icons.search,
                                  color: Color(0xFFB1B5BC),
                                  size: 25,
                                )
                              : Text('  '),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //-----------------------------------------------------
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                  right: MediaQuery.of(context).size.width < 391 ? 20 : 0),
              child: titleCardLowPage(
                text: 'القوانین',
                color: true,
                size: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Color.fromARGB(179, 231, 255, 240),
              height: 500,
              child: ListView.builder(
                itemCount: _foundUsers.length, // homeController.list.length,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: cardPartThirdLowPage(
                    text: _foundUsers[index][0] as String,
                  ),
                  /*LayoutBuilder(
                      builder: (context, constraints) {
                        if (homeController.valueOfSearchLowPage ==
                            homeController.list[index][0]) {
                          return cardPartThirdLowPage(
                            text: homeController.list[index][0] as String,
                          );
                        } else if (homeController.valueOfSearch1 == null) {
                          return cardPartThirdLowPage(
                            text: homeController.list[index][0] as String,
                          );
                        }
                        return Container();
                      },
                    )),*/
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class cardPartThirdLowPage extends StatelessWidget {
  cardPartThirdLowPage({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return GestureDetector(
      onTap: () {
        Vibration.vibrate(duration: 100);
        Get.to(searchPart());
      },
      child: Container(
        height: 56,
        width: 388,
        child: Container(
          height: 56,
          width: 337,
          decoration: BoxDecoration(
            color: grencolor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              text,
              style: fontController.typeselected(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width < 391
                    ? 11 + sizeFontController.addorNotAdd
                    : 13 + sizeFontController.addorNotAdd,
                // fontFamily: 'Alexandria',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
