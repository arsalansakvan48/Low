import 'package:flutter/material.dart';

class topAllLastNewsPage extends StatelessWidget {
  const topAllLastNewsPage({
    super.key,
    required this.imageurl,
  });

  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 221,
      width: 430,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(3, 5),
            blurRadius: 4,
          ),
        ],
        color: Colors.white,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width > 391 ? 60 : 55,
            vertical: 18),
        width: 296,
        height: 186,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(2, 2),
              blurRadius: 4,
            ),
          ],
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imageurl,
              width: MediaQuery.of(context).size.width < 391 ? 230 : 278,
              height: 169,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
