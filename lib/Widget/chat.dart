import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


Widget buildchart(){
return Container(
  child: SfCartesianChart(
    margin: EdgeInsets.all(0),
    primaryXAxis: NumericAxis(isVisible: false),
    primaryYAxis: NumericAxis(isVisible: false,maximum: 4),
    series: <SplineAreaSeries>[
      SplineAreaSeries<Data,double>(dataSource: getchartdata(), xValueMapper: (Data sales,int  index) => sales.x, yValueMapper: (Data sales,int  index) => sales.y,)
    ],
  ),
  height: 200,
);
}

List<Data> getchartdata(){
  return<Data>[
    Data(x:0.0,y:2.5),
    Data(x:0.5,y:2.9),
    Data(x:1.0,y:3.1),
    Data(x:1.5,y:3.1),
    Data(x:2.0,y:3.0),
    Data(x:2.5,y:2.8),
    Data(x:3.0,y:2.5),
    Data(x:3.5,y:2.0),

    Data(x:4.0,y:1.9),
    Data(x:4.5,y:2),
    Data(x:5.0,y:2.5),
    Data(x:6.0,y:2.4),
    Data(x:6.5,y:2.2),
    Data(x:7.0,y:2.5),
    Data(x:8.0,y:3.0),
    Data(x:8.5,y:2.7),
    Data(x:9.0,y:2.8),
    Data(x:10.0,y:2),


    // Data(x:0.0,y:1.2),
    // Data(x:1.0,y:1.4),
    // Data(x:2.0,y:1.8),
    // Data(x:3.0,y:0.9),
    // Data(x:5.0,y:1.8),
    // Data(x:6.0,y:0.99),
    // Data(x:7.0,y:1.1),
    // Data(x:9.0,y:1.8),
    // Data(x:11.0,y:1.2),
  ];
}

class Data{
  Data({required this.x,required this.y});
  final double x;
  final double y;
}

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  late SfRangeValues _values;
  @override
  void initState() {
    _values = SfRangeValues(4.0, 8.0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SfRangeSelector(child: buildchart(),
      initialValues: _values,
      min: 1.3,
        max: 10.0,
      );
  }
}
