import 'package:flutter/material.dart';
import 'package:hive/Widget/body_backgraound.dart';
import 'package:hive/Widget/body_backgraound.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:proste_bezier_curve/utils/type/index.dart';
import 'body_backgraound.dart';

class Body_Background extends StatefulWidget {
  const Body_Background({Key? key}) : super(key: key);


  @override
  State<Body_Background> createState() => _Body_BackgroundState();
}

class _Body_BackgroundState extends State<Body_Background> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeff0fe),
      body: Column(
        children: [
          ClipPath(
            clipper: CustomSelfClipper2(),
            child: Container(
            height: MediaQuery.of(context).size.height*0.4,
              color:Color(0xff143048),
            ),
          )
        ],
      ),
    );
  }
}


class CustomSelfClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    BezierCurveSection section1 = BezierCurveSection(
      start: Offset(0, size.height),
      top: Offset(30, size.height - 40),
      end: Offset(100, size.height - 60),
    );
    BezierCurveSection section2 = BezierCurveSection(
      start: Offset(size.width - 180, size.height - 30),
      top: Offset(size.width - 30, size.height - 95),
      end: Offset(size.width, size.height - 160),
    );
    BezierCurveDots dot1 = ProsteBezierCurve.calcCurveDots(section1);
    BezierCurveDots dot2 = ProsteBezierCurve.calcCurveDots(section2);

    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(dot1.x1, dot1.y1, dot1.x2, dot1.y2);
    path.lineTo(size.width - 100, size.height - 76);
    path.quadraticBezierTo(dot2.x1, dot2.y1, dot2.x2, dot2.y2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}