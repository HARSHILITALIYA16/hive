import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Home%20Page/destination%204.dart';
import 'package:hive/Home%20Page/hotel%20listing%203.dart';
import 'package:hive/Widget/range%20slider.dart';
import '../Widget/body_backgraound.dart';
import '../Widget/chat.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';

import '../Widget/next_push.dart';
import 'destination 2.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  var _lowerValue = 1;
  var _upperValue = 5;
  final _text = [
    "Swimming Pool",
    "Car Parking",
    "Pet",
    "Breakfast",
    "Wifi/TV",
    "Smorking",
    "Spa",
    "Fitness/Gym",
    "Bar/Lounge"
  ];
  // bool _color = false;
  int? _colors;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff0f1ff),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(MaterialPageRoute(
              builder: (context) => Destination_4(),
            ));
          },
          icon: Icon(CupertinoIcons.arrow_left),
        ),
        backgroundColor: Color(0xff143048),
        title: Text("Filter", style: GoogleFonts.rubik(fontSize: 17)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(onTap: (){
              Next_Screen(context, Hotel_Listing_3());
            },
                child: Text("Done", style: GoogleFonts.rubik())),
          ),
        ],
        // toolbarHeight: 25,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Body_Background(),
          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      height: h * 0.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text("Rating",
                                style: GoogleFonts.rubik(
                                    color: Color(0xff143048),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16)),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Container(
                            height: 43,
                            child: ListView.builder(
                              itemCount: 5,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _colors = index;
                                        print(_colors);
                                      });
                                    },
                                    child: Container(
                                      width: 57,
                                      decoration: BoxDecoration(
                                          border:Border.all(color: Colors.black54),
                                          borderRadius:BorderRadius.circular(5),
                                          color: _colors == index
                                              ? Color(0xff143048)
                                              : Colors.white),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("${index + 1}",
                                              style: GoogleFonts.rubik(
                                                color: _colors == index
                                                    ? Colors.white
                                                    : Colors.black,
                                              )),
                                          Icon(
                                            Icons.star,
                                            color: _colors == index
                                                ? Colors.amber
                                                : Color(0xff143048),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.015,
                    ),
                    Container(
                      height: h * 0.28,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Price (USD/Night)",
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff143048),
                              )),
                          Divider(
                            color: Colors.grey,
                          ),
                          Text("20 USD - 250 USD)",
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Color(0xff143048),
                              )),
                          Container(
                            height: h * 0.15,
                            width: w * 0.95,
                            // color: Colors.grey,
                            child: Chat(),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.015,
                    ),
                    Container(
                      height: h * 0.35,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Hotel Falcilities",
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff143048),
                              )),
                          Divider(
                            color: Colors.grey,
                          ),
                          Container(
                            height: h * 0.22,
                            child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 9,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3, childAspectRatio: 2),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        side: BorderSide(color: Colors.grey)),
                                    onPressed: () {},
                                    child: Text(_text[index],
                                        style: GoogleFonts.rubik(
                                            color: Colors.black)),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.015,
                    ),
                    Container(
                      height: h * 0.35,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Distance from",
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff143048),
                              )),
                          Divider(
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                  border: InputBorder.none,
                                  hintText: "e.g. Hanoi Old Quater",
                                  prefixIcon: Icon(
                                    Icons.search_rounded,
                                    color: Color(0xff143048),
                                  )),
                            ),
                          ),
                          Container(
                            height: h * 0.2,
                            width: w * 0.95,
                            color: Colors.white,
                            child: Range_Slider(),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
              ),
            ],
          )
        ],
      ),
    );
  }

//
// class DefaultRangeSelectorPage extends SampleView {
//   /// Creates default range selector widget
//   const DefaultRangeSelectorPage(Key key) : super(key: key);
//
//   @override
//   _DefaultRangeSelectorPageState createState() =>
//       _DefaultRangeSelectorPageState();
// }
//
// class _DefaultRangeSelectorPageState extends SampleViewState {
//   _DefaultRangeSelectorPageState();
//
//   final DateTime min = DateTime(2002), max = DateTime(2011);
//   late List<ChartSampleData> chartData;
//   late RangeController rangeController;
//   late LinearGradient gradientColors;
//   bool _shouldAlwaysShowTooltip = false;
//
//   @override
//   void initState() {
//     super.initState();
//     chartData = <ChartSampleData>[
//       ChartSampleData(x: DateTime(2002), y: 2.2),
//       ChartSampleData(x: DateTime(2003), y: 3.4),
//       ChartSampleData(x: DateTime(2004), y: 2.8),
//       ChartSampleData(x: DateTime(2005), y: 1.6),
//       ChartSampleData(x: DateTime(2006), y: 2.3),
//       ChartSampleData(x: DateTime(2007), y: 2.5),
//       ChartSampleData(x: DateTime(2008), y: 2.9),
//       ChartSampleData(x: DateTime(2009), y: 3.8),
//       ChartSampleData(x: DateTime(2010), y: 1.4),
//       ChartSampleData(x: DateTime(2011), y: 3.1),
//     ];
//     rangeController = RangeController(
//       start: DateTime(2005),
//       end: DateTime(2008),
//     );
//     gradientColors = const LinearGradient(colors: <Color>[
//       Color.fromRGBO(255, 125, 30, 0.4),
//       Color.fromRGBO(255, 125, 30, 1)
//     ], stops: <double>[
//       0.0,
//       0.5
//     ]);
//   }
//
//   @override
//   void dispose() {
//     rangeController.dispose();
//     chartData.clear();
//     super.dispose();
//   }
//
//   double _getAverageInflationRate(RangeController values) {
//     double totalData = 0;
//     int dataCount = 0;
//     double startRate = 1.6;
//     for (int i = 0; i < chartData.length; i++) {
//       //ignore: avoid_as
//       if (chartData[i].x.year == (values.start as DateTime).year) {
//         startRate = chartData[i].y!.toDouble();
//       }
//       if (chartData[i].x.isAfter(
//         //ignore: avoid_as
//           (values.start as DateTime)
//               .subtract(const Duration(hours: 12))) as bool &&
//           chartData[i].x.isBefore(
//             //ignore: avoid_as
//               (values.end as DateTime).add(const Duration(hours: 12)))
//           as bool) {
//         dataCount++;
//         totalData += chartData[i].y!;
//       }
//     }
//     return totalData = dataCount != 0 ? totalData / dataCount : startRate;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final ThemeData themeData = Theme.of(context);
//     final MediaQueryData mediaQueryData = MediaQuery.of(context);
//     return Container(
//       margin: EdgeInsets.zero,
//       padding: EdgeInsets.zero,
//       child: Stack(
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.fromLTRB(
//                 0,
//                 mediaQueryData.orientation == Orientation.portrait
//                     ? 50
//                     : model.isWebFullView
//                     ? 15
//                     : 2,
//                 0,
//                 5),
//             child: const SizedBox(
//               height: 30,
//               child: Center(
//                 child: Text(
//                   'Inflation Rate In Percentage',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 10),
//             child: Center(
//               child: SfRangeSelectorTheme(
//                 data: SfRangeSelectorThemeData(
//                   labelOffset: Offset.zero,
//                   activeLabelStyle: TextStyle(
//                       fontSize: 10,
//                       color: themeData.textTheme.bodyText1!.color!
//                           .withOpacity(0.87)),
//                   inactiveLabelStyle: TextStyle(
//                       fontSize: 10,
//                       color: themeData.textTheme.bodyText1!.color!
//                           .withOpacity(0.87)),
//                   inactiveRegionColor:
//                   themeData.colorScheme.brightness == Brightness.light
//                       ? Colors.white.withOpacity(0.75)
//                       : const Color.fromRGBO(33, 33, 33, 0.75),
//                 ),
//                 child: SfRangeSelector(
//                   min: min,
//                   max: max,
//                   labelPlacement: LabelPlacement.betweenTicks,
//                   interval:
//                   (model.isWebFullView && mediaQueryData.size.width <= 1000)
//                       ? 2
//                       : 1,
//                   controller: rangeController,
//                   dateFormat: DateFormat.y(),
//                   dateIntervalType: DateIntervalType.years,
//                   showTicks: true,
//                   showLabels: true,
//                   enableTooltip: true,
//                   shouldAlwaysShowTooltip: _shouldAlwaysShowTooltip,
//                   tooltipTextFormatterCallback:
//                       (dynamic actualLabel, String formattedText) {
//                     return DateFormat.yMMMd().format(actualLabel);
//                   },
//                   onChanged: (SfRangeValues values) {
//                     setState(() {
//                       /// update the range value changes
//                     });
//                   },
//                   child: SizedBox(
//                     width: mediaQueryData.orientation == Orientation.landscape
//                         ? model.isWebFullView
//                         ? mediaQueryData.size.width * 0.6
//                         : mediaQueryData.size.width
//                         : mediaQueryData.size.width,
//                     height: mediaQueryData.orientation == Orientation.portrait
//                         ? mediaQueryData.size.height * 0.45
//                         : model.isWebFullView
//                         ? mediaQueryData.size.height * 0.38
//                         : mediaQueryData.size.height * 0.4,
//                     child: SfCartesianChart(
//                       margin: EdgeInsets.zero,
//                       primaryXAxis: DateTimeAxis(
//                         minimum: min,
//                         maximum: max,
//                         isVisible: false,
//                       ),
//                       primaryYAxis: NumericAxis(isVisible: false, maximum: 4),
//                       plotAreaBorderWidth: 0,
//                       series: <SplineAreaSeries<ChartSampleData, DateTime>>[
//                         SplineAreaSeries<ChartSampleData, DateTime>(
//                             dataSource: chartData,
//                             xValueMapper: (ChartSampleData sales, _) =>
//                             sales.x as DateTime,
//                             yValueMapper: (ChartSampleData sales, _) => sales.y,
//                             gradient: gradientColors,
//                             animationDuration: 0)
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: mediaQueryData.orientation == Orientation.landscape ||
//                 model.isWebFullView
//                 ? EdgeInsets.only(bottom: mediaQueryData.size.height * 0.025)
//                 : EdgeInsets.only(bottom: mediaQueryData.size.height * 0.1),
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: SizedBox(
//                 height: 25,
//                 child: Text(
//                   'Average rate   :   ' +
//                       _getAverageInflationRate(rangeController)
//                           .toStringAsFixed(2) +
//                       '%',
//                   style: const TextStyle(fontSize: 18),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget buildSettings(BuildContext context) {
//     return StatefulBuilder(
//       builder: (BuildContext context, StateSetter stateSetter) {
//         return CheckboxListTile(
//           value: _shouldAlwaysShowTooltip,
//           title: const Text(
//             'Show tooltip always',
//             softWrap: false,
//           ),
//           activeColor: model.backgroundColor,
//           contentPadding: EdgeInsets.zero,
//           onChanged: (bool? value) {
//             setState(() {
//               _shouldAlwaysShowTooltip = value!;
//               stateSetter(() {});
//             });
//           },
//         );
//       },
//     );
//   }
// }
//
//
//
// /// Base class of the sample's stateful widget class
// abstract class SampleView extends StatefulWidget {
//   /// base class constructor of sample's stateful widget class
//   const SampleView({Key? key}) : super(key: key);
// }
//
// /// Base class of the sample's state class
// abstract class SampleViewState<T extends SampleView> extends State<T> {
//   /// Holds the SampleModel information
//   late SampleModel model;
//
//   /// Holds the information of current page is card view or not
//   late bool isCardView;
//
//   @override
//   void initState() {
//     model = SampleModel.instance;
//     isCardView = model.isCardView && !model.isWebFullView;
//     super.initState();
//   }
//
//   /// Must call super.
//   @override
//   void dispose() {
//     model.isCardView = true;
//     super.dispose();
//   }
//
//   /// Get the settings panel content.
//   Widget? buildSettings(BuildContext context) {
//     return null;
//   }
// }
//
// /// Base class of the localization sample's stateful widget class
// class LocalizationSampleView extends SampleView {
//   /// base class constructor of sample's stateful widget class
//   const LocalizationSampleView({Key? key}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() => LocalizationSampleViewState();
// }
//
// /// Base class of the localization sample's state class
// class LocalizationSampleViewState<T extends LocalizationSampleView>
//     extends SampleViewState<T> {
//   late List<Locale> _supportedLocales;
//
//   @override
//   void initState() {
//     if (this is! DirectionalitySampleViewState) {
//       _supportedLocales = <Locale>[
//         const Locale('ar', 'AE'),
//         const Locale('en', 'US'),
//         const Locale('es', 'ES'),
//         const Locale('fr', 'FR'),
//         const Locale('zh', 'CN')
//       ];
//     } else {
//       _supportedLocales = <Locale>[
//         const Locale('ar', 'AE'),
//         const Locale('en', 'US'),
//       ];
//     }
//
//     super.initState();
//   }
//
//   /// Add the localization selection widget.
//   Widget localizationSelectorWidget(BuildContext context) {
//     final double screenWidth =
//     model.isWebFullView ? 250 : MediaQuery.of(context).size.width;
//     final double dropDownWidth = 0.6 * screenWidth;
//     return StatefulBuilder(
//         builder: (BuildContext context, StateSetter stateSetter) {
//           return Row(
//             children: <Widget>[
//               Text(this is DirectionalitySampleViewState ? 'Language' : 'Locale',
//                   softWrap: false,
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: model.textColor,
//                   )),
//               Container(
//                   padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
//                   width: dropDownWidth,
//                   child: DropdownButton<Locale>(
//                       focusColor: Colors.transparent,
//                       isExpanded: true,
//                       underline:
//                       Container(color: const Color(0xFFBDBDBD), height: 1),
//                       value: model.locale,
//                       items: _supportedLocales.map((Locale value) {
//                         String localeString = value.toString();
//                         if (this is DirectionalitySampleViewState) {
//                           localeString =
//                           (localeString == 'ar_AE') ? 'Arabic' : 'English';
//                         } else {
//                           localeString = localeString.substring(0, 2) +
//                               '-' +
//                               localeString.substring(3, 5);
//                         }
//
//                         return DropdownMenuItem<Locale>(
//                             value: value,
//                             child: Text(localeString,
//                                 style: TextStyle(color: model.textColor)));
//                       }).toList(),
//                       onChanged: (Locale? value) {
//                         if (model.locale != value) {
//                           setState(() {
//                             stateSetter(() {
//                               model.isInitialRender = false;
//                               model.locale = value;
//                               if (this is! DirectionalitySampleViewState) {
//                                 if (model.locale == const Locale('ar', 'AE')) {
//                                   model.textDirection = TextDirection.rtl;
//                                 } else {
//                                   model.textDirection = TextDirection.ltr;
//                                 }
//                               }
//                             });
//                           });
//                         }
//                       })),
//             ],
//           );
//         });
//   }
//
//   Widget _buildDirectionalityWidget() {
//     return Localizations(
//         locale: model.locale!,
//         delegates: const [
//           GlobalMaterialLocalizations.delegate,
//           GlobalWidgetsLocalizations.delegate,
//           GlobalCupertinoLocalizations.delegate,
//           SfGlobalLocalizations.delegate
//         ],
//         child: Directionality(
//             textDirection: model.textDirection,
//             child: buildSample(context) ?? Container()));
//   }
//
//   /// Method to get the widget's color based on the widget state
//   Color? getColor(Set<MaterialState> states) {
//     const Set<MaterialState> interactiveStates = <MaterialState>{
//       MaterialState.pressed,
//       MaterialState.selected,
//     };
//     if (states.any(interactiveStates.contains)) {
//       return model.backgroundColor;
//     }
//     return null;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return _buildDirectionalityWidget();
//   }
//
//   /// Get the settings panel content.
//   Widget? buildSample(BuildContext context) {
//     return null;
//   }
//
//   /// Must call super.
//   @override
//   void dispose() {
//     super.dispose();
//   }
// }
//
// /// Base class of the directionality sample's stateful widget class
// class DirectionalitySampleView extends LocalizationSampleView {
//   /// base class constructor of sample's stateful widget class
//   const DirectionalitySampleView({Key? key}) : super(key: key);
// }
//
// /// Base class of the directionality sample's state class
// class DirectionalitySampleViewState<T extends DirectionalitySampleView>
//     extends LocalizationSampleViewState<T> {
//   final List<TextDirection> _supportedTextDirection = <TextDirection>[
//     TextDirection.LTR,
//     TextDirection.RTL,
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   /// Must call super.
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   /// Close all overlay when property panel is opened. Implemented for PdfViewer
//   /// RTL sample.
//   void closeAllOverlay() {}
//
//   /// Add the localization selection widget.
//   Widget textDirectionSelectorWidget(BuildContext context) {
//     final double screenWidth =
//     model.isWebFullView ? 250 : MediaQuery.of(context).size.width;
//     closeAllOverlay();
//     final double dropDownWidth = 0.6 * screenWidth;
//     return StatefulBuilder(
//         builder: (BuildContext context, StateSetter stateSetter) {
//           return Row(
//             children: <Widget>[
//               Text('Rendering\nDirection',
//                   maxLines: 2,
//                   textAlign: TextAlign.left,
//                   softWrap: false,
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: model.textColor,
//                   )),
//               Container(
//                   padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
//                   width: dropDownWidth,
//                   child: DropdownButton<TextDirection>(
//                       focusColor: Colors.transparent,
//                       isExpanded: true,
//                       underline:
//                       Container(color: const Color(0xFFBDBDBD), height: 1),
//                       value: model.textDirection,
//                       items: _supportedTextDirection.map((TextDirection value) {
//                         return DropdownMenuItem<TextDirection>(
//                             value: value,
//                             child: Text(
//                                 value.toString().split('.')[1].toUpperCase(),
//                                 style: TextStyle(color: model.textColor)));
//                       }).toList(),
//                       onChanged: (TextDirection? value) {
//                         if (model.textDirection != value) {
//                           setState(() {
//                             stateSetter(() {
//                               model.isInitialRender = false;
//                               model.textDirection = value!;
//                             });
//                           });
//                         }
//                       })),
//             ],
//           );
//         });
//   }
// }
//
// ///Chart sample data
// class ChartSampleData {
//   /// Holds the datapoint values like x, y, etc.,
//   ChartSampleData(
//       {this.x,
//         this.y,
//         this.xValue,
//         this.yValue,
//         this.secondSeriesYValue,
//         this.thirdSeriesYValue,
//         this.pointColor,
//         this.size,
//         this.text,
//         this.open,
//         this.close,
//         this.low,
//         this.high,
//         this.volume});
//
//   /// Holds x value of the datapoint
//   final dynamic x;
//
//   /// Holds y value of the datapoint
//   final num? y;
//
//   /// Holds x value of the datapoint
//   final dynamic xValue;
//
//   /// Holds y value of the datapoint
//   final num? yValue;
//
//   /// Holds y value of the datapoint(for 2nd series)
//   final num? secondSeriesYValue;
//
//   /// Holds y value of the datapoint(for 3nd series)
//   final num? thirdSeriesYValue;
//
//   /// Holds point color of the datapoint
//   final Color? pointColor;
//
//   /// Holds size of the datapoint
//   final num? size;
//
//   /// Holds datalabel/text value mapper of the datapoint
//   final String? text;
//
//   /// Holds open value of the datapoint
//   final num? open;
//
//   /// Holds close value of the datapoint
//   final num? close;
//
//   /// Holds low value of the datapoint
//   final num? low;
//
//   /// Holds high value of the datapoint
//   final num? high;
//
//   /// Holds open value of the datapoint
//   final num? volume;
// }
//
// /// Chart Sales Data
// class SalesData {
//   /// Holds the datapoint values like x, y, etc.,
//   SalesData(this.x, this.y, [this.date, this.color]);
//
//   /// X value of the data point
//   final dynamic x;
//
//   /// y value of the data point
//   final dynamic y;
//
//   /// color value of the data point
//   final Color? color;
//
//   /// Date time value of the data point
//   final DateTime? date;
}
