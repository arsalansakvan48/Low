import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/homepage/secentparthomepage/cardSecentPart.dart';
import 'package:lowproject/view/propartyOfAllCatagory/propartyOfAllCatagoryHome.dart';

class thirdPartHomePage extends StatelessWidget {
  thirdPartHomePage({
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
        height: 107,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          reverse: true,
          itemCount: homeController.list1.length,
          itemBuilder: (context, index) => cardSecentPart(
            title: homeController.list1[index][0] as String,
            image: homeController.list1[index][1] as String,
            sizeHW: homeController.list1[index][2] as bool,
            function: () {
              Get.to(propartyOfAllCatagoryHome(
                list1: homeController.listservess,
                titleAppbar: homeController.list1[index][0] as String,
              ));
            },
          ),
        ),
      ),
    );
  }
}
