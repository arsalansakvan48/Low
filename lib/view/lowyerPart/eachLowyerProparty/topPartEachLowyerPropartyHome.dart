import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/color.dart';
import 'package:vibration/vibration.dart';

class topPartEachLowyerPropartyHome extends StatefulWidget {
  topPartEachLowyerPropartyHome({
    super.key,
    required this.imageusrl,
  });
  var imageusrl;

  @override
  State<topPartEachLowyerPropartyHome> createState() =>
      _topPartEachLowyerPropartyHomeState();
}

class _topPartEachLowyerPropartyHomeState
    extends State<topPartEachLowyerPropartyHome> {
  bool isIcon1Visible = true;
  @override
  Widget build(BuildContext context) {
    //  HomeController homecontroller = Get.put(HomeController());
    return Stack(
      children: [
        Container(
          width: 431,
          height: MediaQuery.of(context).size.width > 391 ? 60 : 60,
          decoration: const ShapeDecoration(
            color: grencolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width > 385 ? 8 : 14),
          child: Align(
            alignment: FractionalOffset.center,
            child: Container(
              width: MediaQuery.of(context).size.width > 385 ? 109 : 80,
              height: MediaQuery.of(context).size.width > 385 ? 109 : 80,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imageusrl),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(200),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: MediaQuery.of(context).size.width > 385 ? 70 : 75,
          ),
          child: Row(
            children: [
              Icon(
                Icons.share_outlined,
                color: grencolor,
                size: MediaQuery.of(context).size.width > 385 ? 26 : 20,
              ),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  Vibration.vibrate(duration: 100);
                  setState(() {
                    isIcon1Visible = !isIcon1Visible;
                  });
                },
                child: Icon(
                  isIcon1Visible
                      ? Icons.bookmark_outline_outlined
                      : Icons.bookmark_outlined,
                  color: grencolor,
                  size: MediaQuery.of(context).size.width > 385 ? 25 : 20,
                ),
              )
              // Image.asset('asset/Vector6.png')
            ],
          ),
        ),
      ],
    );
  }
}
