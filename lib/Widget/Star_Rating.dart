import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key, required this.color}) : super(key: key);
  final color;

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    double value = 5;
    return StatefulBuilder(
      builder: ((context, setState) {
        return RatingStars(
          value: value,
          onValueChanged: (v) {
            setState(() {
              value = v;
            });
          },
          starBuilder: (index, color) => Icon(
            Icons.radio_button_checked_outlined,
            size: 20,
            color: color,
          ),
          starCount: 5,
          starSize: 18,
          valueLabelColor: Colors.transparent,
          valueLabelTextStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12.0),
          valueLabelRadius: 10,
          maxValue: 5,
          starSpacing: 1,
          maxValueVisibility: true,
          valueLabelVisibility: true,
          animationDuration: Duration(milliseconds: 100),
          // valueLabelPadding:
          // const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
          valueLabelMargin: const EdgeInsets.only(right: 8),
          starOffColor: const Color(0xffe7e8ea),
          starColor: widget.color,
        );
      }),
    );
  }
}
