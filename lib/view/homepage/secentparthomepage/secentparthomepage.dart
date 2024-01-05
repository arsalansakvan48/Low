import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/homepage/secentparthomepage/cardSecentPart.dart';
import 'package:lowproject/view/propartyOfAllCatagory/propartyOfAllCatagoryHome.dart';
import 'package:vibration/vibration.dart';

class secentparthomepage extends StatelessWidget {
  secentparthomepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: Container(
        height: 103,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          reverse: true,
          itemCount: homeController.list2.length,
          itemBuilder: (context, index) => cardSecentPart(
            title: homeController.list2[index][0] as String,
            image: homeController.list2[index][1] as String,
            sizeHW: true,
            function: () {
              Vibration.vibrate(duration: 100);
              Get.to(propartyOfAllCatagoryHome(
                list1: homeController.listright,
                titleAppbar: homeController.list2[index][0] as String,
              ));
            },
          ),
        ),
      ),
    );
  }
}
