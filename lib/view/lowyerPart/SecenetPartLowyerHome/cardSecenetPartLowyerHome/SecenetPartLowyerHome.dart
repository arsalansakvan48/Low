import 'package:flutter/material.dart';
import 'package:lowproject/view/lowyerPart/SecenetPartLowyerHome/cardSecenetPartLowyerHome/cardSecenetPartLowyerHome.dart';

class SecenetPartLowyerHome extends StatelessWidget {
  const SecenetPartLowyerHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => cardLowyerHomePart(),
      ),
    );
  }
}
