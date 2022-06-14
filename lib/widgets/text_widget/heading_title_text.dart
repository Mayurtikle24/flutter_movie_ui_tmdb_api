import 'package:flutter/material.dart';

class HeadingTitleText extends StatelessWidget {
  const HeadingTitleText({
    Key? key,
    required this.title,
    required this.textSize,
  }) : super(key: key);
  final String title;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: textSize,
              color: Colors.white,
              decoration: TextDecoration.none),
        ),
        const Text(
          "See All",
          style: TextStyle(
              fontSize: 15,
              fontFamily: "Muli",
              fontWeight: FontWeight.bold,
              color: Colors.red,
              decoration: TextDecoration.none),
        ),
      ],
    );
  }
}
