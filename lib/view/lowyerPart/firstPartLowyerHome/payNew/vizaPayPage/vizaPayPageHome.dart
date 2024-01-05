import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/controller/TypeFontController.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lowyerPart/firstPartLowyerHome/payNew/vizaPayPage/textTopvizaPayPageHome.dart';

import '../../../../../controller/sizeFontController.dart';

class vizaPayPageHome extends StatelessWidget {
  const vizaPayPageHome({super.key});

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.chevron_right_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
        leading: const Text(' '),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            textTopvizaPayPageHome(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: Container(
                width: 388,
                height: 56,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('asset/Visa.png'),
                    ),
                    Text(
                      'بطاقة بنكية',
                      textAlign: TextAlign.end,
                      style: fontController.typeselected(
                        fontSize: 15 + sizeFontController.addorNotAdd,
                        //  fontFamily: 'Alexandria',
                      ),
                    ),
                    Radio(
                      value: 'بطاقة بنكية',
                      groupValue: 'بطاقة بنكية',
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ),
            textBoxVizaPatPaheHome(
              title: 'رقم البطاقة',
              text: 'رقم البطاقة',
            ),
            textBoxVizaPatPaheHome(
              title: 'اسم حامل البطاقة',
              text: 'اسم حامل البطاقة',
            ),
            textBoxVizaPatPaheHome(
              title: 'تاريخ الأنتهاء',
              text: 'شهر / سنة',
            ),
            textBoxVizaPatPaheHome(
              title: 'الرقم السري',
              text: 'cvc',
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 266,
                  height: 37,
                  decoration: BoxDecoration(
                      color: grencolor, borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'أدفع الأن',
                      style: fontController.typeselected(
                        color: Colors.white,
                        fontSize: 16 + sizeFontController.addorNotAdd,
                        //  fontFamily: 'Alexandria',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

class textBoxVizaPatPaheHome extends StatelessWidget {
  textBoxVizaPatPaheHome({
    super.key,
    required this.text,
    required this.title,
  });
  String title;
  String text;
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                title,
                style: fontController.typeselected(
                  fontSize: 18 + sizeFontController.addorNotAdd,
                  //  fontFamily: 'Alexandria',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              width: 388,
              height: 56,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black.withOpacity(0.4),
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5, right: 2),
                        child: TextField(
                          textAlign: TextAlign.right,
                          style: fontController.typeselected(
                              //  fontFamily: 'Alexandria',
                              color: Colors.grey,
                              fontSize: 12 + sizeFontController.addorNotAdd),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: text,
                            hintStyle: fontController.typeselected(
                                //  fontFamily: 'Alexandria',
                                color: Colors.grey,
                                fontSize: 14 + sizeFontController.addorNotAdd),
                          ),
                          onSubmitted: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
