import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/view/color.dart';

import '../../../../controller/TypeFontController.dart';

class rightPartCardSecenetPartLowyerHome extends StatelessWidget {
  const rightPartCardSecenetPartLowyerHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 135,
        // height: 78,
        //  color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.check_circle_sharp,
                  color: Colors.blue,
                  size: 12,
                ),
                /* SizedBox(
                  width: 3,
                ),*/
                Text(
                  'المحامي احمد السيد',
                  textAlign: TextAlign.center,
                  style: fontController.typeselected(
                    // fontFamily: 'Alexandria',
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5)),
                ),
                /* SizedBox(
                  width: 3,
                ),*/
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                locationEmailPhone(
                  icons: Icons.location_on,
                  texts: 'شارع فلسطين امام متجري كبير',
                ),
                locationEmailPhone(
                  icons: Icons.email,
                  texts: 'ahemdTest@gmail.com',
                ),
                locationEmailPhone(
                  icons: Icons.phone,
                  texts: '00 12 34 56 789',
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3, right: 7),
                  child: Container(
                    width: 117,
                    height: 17,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: grencolor),
                    child: Center(
                      child: Text(
                        'السيرة الذاتية',
                        style: fontController.typeselected(
                          fontSize: 8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class locationEmailPhone extends StatelessWidget {
  locationEmailPhone({
    super.key,
    required this.texts,
    required this.icons,
  });
  var icons;
  String texts;
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            texts,
            textAlign: TextAlign.right,
            style: fontController.typeselected(
              // fontFamily: 'Alexandria',
              color: Color.fromARGB(255, 129, 124, 124),
              fontSize: 7,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            icons,
            color: grencolor.withOpacity(0.8),
            size: 14,
          )
        ],
      ),
    );
  }
}
/*
  SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 3, left: 3),
            child: Container(
              width: 117,
              height: 17,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3), color: grencolor),
              child: Center(
                child: Text(
                  'السيرة الذاتية',
                  style: fontController.typeselected(
                    fontSize: 8,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
 */