import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
       child: Center(
        child: Image.asset('assets/images/R.jpg'),
       ),
    );
  }
}