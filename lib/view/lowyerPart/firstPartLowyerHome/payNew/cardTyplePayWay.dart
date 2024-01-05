import 'package:flutter/material.dart';

class cardTyplePayWay extends StatelessWidget {
  cardTyplePayWay({
    super.key,
    required this.image,
    required this.color,
  });
  var image;
  var color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 137,
      width: 162,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: image,
    );
  }
}
