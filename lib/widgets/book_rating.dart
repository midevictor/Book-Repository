import "package:book_app/constants.dart";
import "package:flutter/material.dart";

class Bookrating extends StatelessWidget {
  final double score;
  const Bookrating({
    super.key, required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow:  [BoxShadow(
          offset: Offset(3,7),
          blurRadius: 20,
          color: lShadowColor)]
      ),
      child: Column(
        children : <Widget>[
          Icon(
            Icons.star,
            color: kIconColor,
            size:15,
          ),
          SizedBox(height: 5),
          Text(
            "$score",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            )
          )
        ]
    
      ),
    );
  }
}
