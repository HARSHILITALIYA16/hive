import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

/// My app class to display the date range picker
class Datepicker extends StatefulWidget {
  @override
  DatepickerState createState() => DatepickerState();
}

/// State for MyApp
class DatepickerState extends State<Datepicker> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      print(_range);
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)}';
        // ignore: lines_longer_than_80_chars
        _rangeCount = ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate)}';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Text('Selected date: $_selectedDate'),
                // Text('Selected date count: $_dateCount'),
                // Text('Selected range: ${_range.substring(0,1)}'),
                // Text('Selected ranges count: $_rangeCount')
                Text(_range),
                Text(_rangeCount),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 80,
            right: 0,
            bottom: 300,
            child: SfDateRangePicker(
              onSelectionChanged: _onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.range,
              initialSelectedDate: DateTime(2022),
              initialSelectedDates: [DateTime.now()],
              initialSelectedRange: PickerDateRange(
                  DateTime.now().subtract(Duration(days: 4)),
                  DateTime.now().add(Duration(days: 3))),
            ),
          ),
        ],
      ),
      appBar: AppBar(actions: [
        InkWell(
          child: Text("fgh"),
          onTap: () {
            print("zxcv${_range}");
          },
        )
      ]),
    ));
  }
}
