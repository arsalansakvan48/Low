import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lowsPage/moreLowsPage/cardMoreLowsthirdPart.dart';
import 'package:lowproject/view/lowsPage/moreLowsPage/firstMoreLowsPage.dart';
import 'package:lowproject/view/lowsPage/secentPartLowPage.dart';
import 'package:vibration/vibration.dart';

import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class moreLowsPage extends StatefulWidget {
  moreLowsPage({super.key, required this.lowIndex});
  String lowIndex;

  @override
  State<moreLowsPage> createState() => _moreLowsPageState();
}

class _moreLowsPageState extends State<moreLowsPage> {
  HomeController homeController = Get.put(HomeController());
  // This list holds the data for the list view
  List<List> foundUsers = [];

  @override
  initState() {
    foundUsers = homeController.listmoreLowsPage;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<List> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = homeController.listmoreLowsPage;
    } else {
      results = homeController.listmoreLowsPage
          .where((user) => (user[1] as String)
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
      foundUsers = results;
      // print(results);
    });
  }

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      appBar: AppBar(
          backgroundColor: grencolor,
          title: Center(
            child: Text(
              'تفاصيل القانون',
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
          leading: Text(' ')
          /* Padding(
          padding: const EdgeInsets.all(13.0),
          child: Image.asset(
            'asset/balance-1-svgrepo-com (1).png',
          ),
        ),*/
          ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            firstMoreLowsPage(),
            const SizedBox(
              height: 20,
            ),
            //---------------------------------------------
            /*secentPartLowPage(
              textCOlors: Colors.grey,
              isRadios: true,
              colors: grencolor.withOpacity(0.15),
              searchMark: true,
              textHighlight: 'ادخل كلمة او جملة للبحث',
              bottonText: Text(
                'البحث',
                style: fontController.typeselected(
                    // fontFamily: 'Alexandria',
                    color: background,
                    fontSize: 15 + sizeFontController.addorNotAdd),
              ),
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
                              // fontFamily: 'Alexandria',
                              color: background,
                              fontSize: 15 + sizeFontController.addorNotAdd),
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
                                hintText: 'ادخل كلمة او جملة للبحث',
                                hintStyle: fontController.typeselected(
                                    // fontFamily: 'Alexandria',
                                    color: Colors.grey,
                                    fontSize:
                                        12 + sizeFontController.addorNotAdd),
                              ),
                              onChanged: (value) {
                                _runFilter(value);
                              },
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.search,
                              color: Color(0xFFB1B5BC),
                              size: 25,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //------------------------------------------------------------
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width > 391 ? 0 : 10),
              child: Container(
                width: 385,
                height: homeController.listmoreLowsPage.length * 380,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: foundUsers.length,
                    itemBuilder: (context, index) => LayoutBuilder(
                          builder: (context, constraints) {
                            if (homeController.valueOfSearch1 ==
                                homeController.listmoreLowsPage[index][3]) {
                              return cardMoreLowsthirdPart(
                                title: homeController.listmoreLowsPage[index][0]
                                    as String,
                                text: homeController.listmoreLowsPage[index][1]
                                    as String,
                                cardSizeHeight: homeController
                                    .listmoreLowsPage[index][2] as bool,
                              );
                            } else if (homeController.valueOfSearch1 == 'all') {
                              return cardMoreLowsthirdPart(
                                title: foundUsers[index][0] as String,
                                text: foundUsers[index][1] as String,
                                cardSizeHeight: foundUsers[index][2] as bool,
                              );
                            }
                            return Container();
                          },
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
