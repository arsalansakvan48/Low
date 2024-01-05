import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/homepage/fourthparthomrpage/cardFourthPartHomrPage.dart';

class fourthPartHomrPage extends StatelessWidget {
  fourthPartHomrPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Container(
      color: background,
      height: homeController.list.length * 120,
      child: ListView.builder(
        itemCount: homeController.list.length,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
            left: 20,
            right: 20,
          ),
          child: cardFourdPart(
            title: homeController.list[index][0] as String,
            subtitle: homeController.list[index][1] as String,
            imageurl: homeController.list[index][2] as String,
          ),
        ),
      ),
    );
  }
}
