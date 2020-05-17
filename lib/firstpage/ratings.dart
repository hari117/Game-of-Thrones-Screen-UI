import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingIcon extends StatelessWidget {
  int startRatings;
  int ratings;

  RatingIcon({this.startRatings, this.ratings}) {
    if (startRatings > 5) {
      this.startRatings = 5;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> icons = [];
    for (var i = startRatings; i >= 1; i--) {
      icons.add(fullStar());
    }
    for (var i = (5 - startRatings); i >= 1; i--) {
      icons.add(halfStar());
    }
    icons.add(textWidget());
    return Row(
      children: icons,
    );
  }

  Widget fullStar() {
    return Icon(
      Icons.star,
      size: 10,
      color: Color.fromRGBO(6, 98, 220, 1),
    );
  }

  Widget halfStar() {
    return Opacity(
      opacity: 0.2,
      child: Icon(
        Icons.star,
        size: 10,
        color: Color.fromRGBO(6, 98, 220, 1),
      ),
    );
  }

  Widget textWidget() {
    return Text(
      ratings.toString(),
      style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.14,
          color: Color.fromRGBO(6, 98, 220, 1)),
    );
  }
}
