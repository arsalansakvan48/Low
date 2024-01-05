import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/lowyerPart/firstPartLowyerHome/payNew/asiaPaydesin.dart';
import 'package:lowproject/view/lowyerPart/firstPartLowyerHome/payNew/cardTyplePayWay.dart';
import 'package:lowproject/view/lowyerPart/firstPartLowyerHome/payNew/firstPartPayNewPage.dart';
import 'package:lowproject/view/lowyerPart/firstPartLowyerHome/payNew/payNewDesginBotton.dart';
import 'package:lowproject/view/lowyerPart/firstPartLowyerHome/payNew/vizaPayPage/vizaPayPageHome.dart';
import 'package:vibration/vibration.dart';

import '../../../../controller/TypeFontController.dart';

class asiaZainVizaLogo extends StatefulWidget {
  const asiaZainVizaLogo({super.key});

  @override
  State<asiaZainVizaLogo> createState() => _asiaZainLogoState();
}

class _asiaZainLogoState extends State<asiaZainVizaLogo> {
  String paymentMethod = '';
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            cardTyplePayWay(
              color: const Color.fromARGB(255, 215, 71, 61),
              image: GestureDetector(
                onTap: () {
                  setState(() {
                    Vibration.vibrate(duration: 100);
                    paymentMethod = 'اسيا PAY';
                  });
                },
                child: asiaPaydesin(),
              ),
            ),
            cardTyplePayWay(
              color: Colors.black,
              image: GestureDetector(
                onTap: () {
                  setState(() {
                    Vibration.vibrate(duration: 100);
                    paymentMethod = 'زين كاش';
                  });
                },
                child: Container(
                  child:
                      Image.asset('asset/NB-262672-636874639591817294 1.png'),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Radio(
                value: 'اسيا PAY',
                groupValue: paymentMethod,
                onChanged: (value) {
                  setState(() {
                    paymentMethod = value.toString();
                    print(paymentMethod);
                  });
                },
              ),
              Text(
                'اسيا PAY',
                style: fontController.typeselected(
                  // fontFamily: 'Alexandria',
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Radio(
                value: 'زين كاش',
                groupValue: paymentMethod,
                onChanged: (value) {
                  setState(() {
                    paymentMethod = value.toString();
                  });
                },
              ),
              Text(
                'زين كاش',
                style: fontController.typeselected(
                  //  fontFamily: 'Alexandria',
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: firstPartPayNewPage(
            text: 'او من خلال',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                Vibration.vibrate(duration: 100);
                paymentMethod = 'بطاقة بنكية';
              });
            },
            child: Container(
              width: 388,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
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
                      fontSize: 15,
                      //  fontFamily: 'Alexandria',
                    ),
                  ),
                  Radio(
                    value: 'بطاقة بنكية',
                    groupValue: paymentMethod,
                    onChanged: (value) {
                      setState(() {
                        paymentMethod = value.toString();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: GestureDetector(
            onTap: () {
              Vibration.vibrate(duration: 100);
              Get.to(vizaPayPageHome());
            },
            child: payNewDesginBotton(),
          ),
        ),
      ],
    );
  }
}
