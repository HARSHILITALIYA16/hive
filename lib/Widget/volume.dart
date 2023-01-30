import 'package:flutter/material.dart';

class Volume extends StatefulWidget {
  Volume({super.key});

  @override
  State<Volume> createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  double pv = 0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
      child: RotatedBox(
        quarterTurns: 3,
        child: SizedBox(
          child: Theme(
            data: ThemeData(
              sliderTheme: SliderThemeData(
                  trackShape: CustomSliderTrackClass(),
                  thumbShape: CustomThumbClass()),
            ),
            child: Slider(
                min: 0,
                max: 1,
                value: pv,
                onChanged: (v) {
                  pv = v;
                  setState(() {});
                }),
          ),
        ),
      ),
    );
    //     GestureDetector(
    //   onPanUpdate: (d) {
    //     print(d.globalPosition.direction);
    //     pv++;
    //     setState(() {});
    //   },
    //   child: Container(
    //     height: 200,
    //     color: Colors.amber,
    //     width: 50,
    //     child: CustomPaint(painter: Cpaint(pv / 100)),
    //   ),
    // ),
  }
}

// class Cpaint extends CustomPainter {
//   Cpaint(this.value);
//   double value;
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()..color = Colors.red;
//     canvas.drawRRect(
//         RRect.fromRectAndCorners(
//             Rect.fromLTRB(0, size.height * value, 50, size.height)),
//         paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     // TODO: implement shouldRepaint
//     return true;
//   }
// }

class CustomSliderTrackClass extends SliderTrackShape {
  CustomSliderTrackClass({this.isDisable = false});
  bool isDisable;
  @override
  Rect getPreferredRect(
      {required RenderBox parentBox,
      Offset offset = Offset.zero,
      required SliderThemeData sliderTheme,
      bool isEnabled = true,
      bool isDiscrete = true}) {
    return Rect.fromLTWH(10, 0, parentBox.constraints.maxWidth, 30);
  }

  @override
  void paint(PaintingContext context, Offset offset,
      {required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required Animation<double> enableAnimation,
      required Offset thumbCenter,
      bool isEnabled = true,
      bool isDiscrete = true,
      required TextDirection textDirection}) {
    // TODO: implement paint

    if (sliderTheme.trackHeight == 0) {
      return;
    }

    // Assign the track segment paints, which are left: active, right: inactive,
    // but reversed for right to left text.
    final ColorTween activeTrackColorTween = ColorTween(
        begin: sliderTheme.disabledActiveTrackColor,
        end: sliderTheme.activeTrackColor);
    final ColorTween inactiveTrackColorTween =
        ColorTween(begin: Colors.transparent, end: Colors.transparent);
    final Paint activePaint = Paint()
      ..shader = isDisable
          ? LinearGradient(
              colors: <Color>[Color(0xffD0D0D0), Color(0xffD0D0D0)],
            ).createShader(
              Rect.fromLTWH(0.0, 0.0, 200.0, 90.0),
            )
          : LinearGradient(
              colors: <Color>[
                Color(0xff098A64),
                Color(0xff10BA89),
              ],
            ).createShader(
              Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
            )
      ..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint inactivePaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation)!;
    Paint leftTrackPaint;
    Paint rightTrackPaint;
    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
        break;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
        break;
    }

    double horizontalAdjustment = 0.0;
    if (!isEnabled) {
      final double disabledThumbRadius =
          sliderTheme.thumbShape!.getPreferredSize(false, isDiscrete).width /
              2.0;
      final double gap = 20 * (1.0 - enableAnimation.value);
      horizontalAdjustment = disabledThumbRadius + gap;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );
    final RRect leftTrackSegment = RRect.fromRectAndCorners(
        Rect.fromLTRB(trackRect.left, trackRect.top - 20, thumbCenter.dx,
            trackRect.bottom + 20),
        topLeft: Radius.circular(100),
        bottomLeft: Radius.circular(100),
        topRight: Radius.circular(100),
        bottomRight: Radius.circular(100));

    // final Rect leftTrackSegment = Rect.fromLTRB(trackRect.left, trackRect.top,
    //     thumbCenter.dx - horizontalAdjustment + 12, trackRect.bottom);

    // Left Arc
    // context.canvas.drawArc(
    //     Rect.fromCircle(
    //         center: Offset(trackRect.left, trackRect.top + 17.5), radius: 17.5),
    //     -pi * 3 / 2, // -270 degrees
    //     pi, // 180 degrees
    //     false,
    //     leftTrackPaint);

    // Right Arc
    // context.canvas.drawArc(
    //     Rect.fromCircle(
    //         center: Offset(trackRect.right, trackRect.top + 17.5),
    //         radius: 17.5),
    //     -pi / 2, // -90 degrees
    //     pi, // 180 degrees
    //     false,
    //     trackRect.right - thumbCenter.dx == 0.0
    //         ? leftTrackPaint
    //         : rightTrackPaint);
    final RRect rightTrackSegment = RRect.fromRectAndCorners(
        Rect.fromLTRB(trackRect.left + horizontalAdjustment, trackRect.top,
            trackRect.right, trackRect.bottom),
        topLeft: Radius.circular(100),
        bottomLeft: Radius.circular(100),
        topRight: Radius.circular(100),
        bottomRight: Radius.circular(100));
    // final Rect rightTrackSegment = Rect.fromLTRB(
    //     thumbCenter.dx + horizontalAdjustment,
    //     trackRect.top,
    //     trackRect.right,
    //     trackRect.bottom);
    context.canvas.drawRRect(rightTrackSegment, rightTrackPaint);
    context.canvas.drawRRect(leftTrackSegment, leftTrackPaint);
  }
}

class CustomThumbClass extends SliderComponentShape {
  CustomThumbClass({this.isDisable = false});
  bool isDisable;
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    // TODO: implement getPreferredSize
    return Size(0, 0);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final canvas = context.canvas;

    Paint paint = Paint()..color = Colors.transparent;
    // Paint paint2 = Paint()
    //   ..shader = isDisable
    //       ? LinearGradient(
    //           colors: <Color>[Color(0xffD0D0D0), Color(0xffD0D0D0)],
    //         ).createShader(
    //           Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
    //         )
    //       : linearGradientpink;
    final c = Offset(center.dx - 15.8, center.dy);
    // canvas.drawCircle(c, 17.5, paint2);
    canvas.drawCircle(c, 13, paint);
  }
}
