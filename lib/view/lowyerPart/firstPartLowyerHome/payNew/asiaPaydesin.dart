import 'package:flutter/material.dart';

class asiaPaydesin extends StatelessWidget {
  const asiaPaydesin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Column(
          children: [
            Text(
              'ASIA',
              style: TextStyle(
                fontSize: 38,
                color: Colors.white,
              ),
            ),
            Text(
              'PAY',
              style: TextStyle(
                fontSize: 54,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
