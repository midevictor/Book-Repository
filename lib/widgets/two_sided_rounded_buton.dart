import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';

class TwoSideRoundedButton extends StatelessWidget {
    final String text;
    final double radius = 29;
    final VoidCallback press;
  const TwoSideRoundedButton({
    super.key, required this.text, required this.press, required int radius,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: press,
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
              vertical: 10),
          decoration: BoxDecoration(
              color: kBlackColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radius),
                bottomRight: Radius.circular(radius),
              )
              ),
          child: Text(text,
              style: TextStyle(
                  color: Colors.white))),
    );
  }
}
