import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/lowyerPart/SecenetPartLowyerHome/cardSecenetPartLowyerHome/leftPartCardSecenetPartLowyerHome.dart';
import 'package:lowproject/view/lowyerPart/SecenetPartLowyerHome/cardSecenetPartLowyerHome/rightPartCardSecenetPartLowyerHome.dart';
import 'package:lowproject/view/lowyerPart/eachLowyerProparty/eachLowyerPropartyHome.dart';
import 'package:vibration/vibration.dart';

class cardLowyerHomePart extends StatelessWidget {
  const cardLowyerHomePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //FontController fontController = Get.put(FontController());
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        left: 20,
        right: 20,
      ),
      child: GestureDetector(
        onTap: () {
          Vibration.vibrate(duration: 100);
          Get.to(eachLowyerPropartyHome());
        },
        child: Container(
          width: 400,
          height: 106,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              leftPartCardSecenetPartLowyerHome(),
              rightPartCardSecenetPartLowyerHome(),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 0, right: 5),
                child: Container(
                  //  color: Colors.amber,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            height: MediaQuery.of(context).size.width >= 385
                                ? 60.w
                                : 60,
                            width: MediaQuery.of(context).size.width >= 385
                                ? 65.w
                                : 60,
                            //  color: Colors.yellow,
                            child: Image.asset(
                              'asset/garden.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        //  color: Colors.yellow,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 25,
                              width: 50,
                              child: Image.asset(
                                'asset/rating 1.png',

                                fit: BoxFit.cover,
                                // width: 50,
                                height: double.infinity,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: SizedBox(
                                width: 10,
                                height: 25,
                                child: Text(
                                  '5.0',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 6.5,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            /* SizedBox(
                              width: 10,
                              height: 25,
                              child: Text(
                                '(145)',
                                style: TextStyle(
                                  color: Color(0xFF7B7878),
                                  fontSize: 6,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  height: 0,
                                ),
                              ),
                            ),*/
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
