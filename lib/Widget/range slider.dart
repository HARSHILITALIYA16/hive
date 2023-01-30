import 'package:flutter/material.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';

class Range_Slider extends StatefulWidget {
  const Range_Slider({Key? key}) : super(key: key);

  @override
  State<Range_Slider> createState() => _Range_SliderState();
}

class _Range_SliderState extends State<Range_Slider> {
  var _lowerValue = 1.0;
  var _upperValue = 5;
  @override
  Widget build(BuildContext context) {
    return _slider();
  }

  Widget _slider() {
    return RangeSliderFlutter(
      // key: Key('3343'),
      values: [1, 10],
      rangeSlider: true,
      tooltip: RangeSliderFlutterTooltip(
        alwaysShowTooltip: true,
      ),
      max: 30.roundToDouble(),
      textPositionTop: -100,
      handlerHeight: 30,
      trackBar: RangeSliderFlutterTrackBar(
        activeTrackBarHeight: 5,
        inactiveTrackBarHeight: 5,
        activeTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
        ),
        inactiveTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
      ),

      min: 0,
      fontSize: 15,
      textBackgroundColor: Color(0xff143048),
      onDragging: (handlerIndex, lowerValue, upperValue) {
        _lowerValue = lowerValue;
        _upperValue = upperValue;
        setState(() {});
      },
    );
  }
}
