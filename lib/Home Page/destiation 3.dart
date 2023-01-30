import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Home%20Page/destination%202.dart';
import 'package:hive/Home%20Page/destination%204.dart';
import 'package:hive/Widget/Button.dart';
import 'package:hive/Widget/next_push.dart';
import '../Widget/body_backgraound.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Destination_3 extends StatefulWidget {
  const Destination_3({Key? key}) : super(key: key);

  @override
  State<Destination_3> createState() => _Destination_3State();
}

class _Destination_3State extends State<Destination_3> {
  List day = [
    "Exact Date",
    "1 Day",
    "2 Day",
    "3 Day",
    "4 Day",
    "5 Day",
    "6 Day",
    "7 Day"
  ];
  String _range = '';
  String _rangeCount = '';
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(  onTap: () {
              // print("next svreen");
              Next_Screen(context, Destination_4());
            },
                child: Text("Done", style: GoogleFonts.rubik(fontSize: 17))),
          ),
        ],
        title: Text("Where to?", style: GoogleFonts.rubik(fontSize: 17)),
        backgroundColor: Color(0xff143048),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Body_Background(),
          Positioned(
              top: h * 0.13,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                      child: Column(
                    children: [
                      GestureDetector(  onTap: () {
                        // print("next svreen");
                        Next_Screen(context, Destination_2());
                      },
                        child: Container(
                          height: h * 0.09,
                          width: w * 0.95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffdcdfe2)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    prefixIcon: Icon(CupertinoIcons.search),
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          Next_Screen(context, Destination_2());
                                        },
                                        icon: Icon(CupertinoIcons.arrow_right)),
                                    hintText: "Enter Place",
                                    fillColor: Colors.black,
                                    label: Text("Destination"))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.017,
                      ),
                      Container(
                        height: h * 0.19,
                        width: w * 0.95,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffdcdfe2).withOpacity(0.99)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: h * 0.07,
                              child: Center(
                                child: Text("Set Date",
                                    style: GoogleFonts.rubik(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff143048),
                                    )),
                              ),
                            ),
                            Divider(
                              indent: 2,
                              color: Colors.grey,
                              endIndent: 2,
                            ),
                            Container(
                              height: h * 0.09,
                              width: w * 0.95,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    CupertinoIcons.calendar,
                                    color: Color(0xff143048),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2),
                                          child: Text("Arrval Date",
                                              style: GoogleFonts.rubik(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black)),
                                        ),
                                        Text(_range,
                                            style: GoogleFonts.rubik(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black)),
                                      ],
                                    ),
                                  ),
                                  Icon(CupertinoIcons.arrow_right),
                                  Icon(
                                    CupertinoIcons.calendar,
                                    color: Color(0xff143048),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2),
                                          child: Text("Departure Date",
                                              style: GoogleFonts.rubik(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black)),
                                        ),
                                        Text(_rangeCount,
                                            style: GoogleFonts.rubik(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.017,
                      ),
                      Container(
                        height: h * 0.33,
                        width: w * 0.95,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfffdfdff),
                        ),
                        child: SfDateRangePicker(
                          onSelectionChanged: _onSelectionChanged,
                          selectionMode: DateRangePickerSelectionMode.range,
                          initialSelectedRange: PickerDateRange(
                              DateTime.now().subtract(const Duration(days: 4)),
                              DateTime.now().add(const Duration(days: 3))),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.017,
                      ),
                      Container(
                        height: 40,width: w*0.95,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Chip(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(color: Color(0xff143048)),
                                  label: Text(day[index])),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: h * 0.017,
                      ),
                      button(text: Text("Next",style: GoogleFonts.rubik(color: Colors.white,fontSize: 16)), navi: Destination_4())
                    ],
                  ))))
        ],
      ),
    );
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)}';
        // ignore: lines_longer_than_80_chars
        _rangeCount = ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate)}';
      }
    });
  }
}
