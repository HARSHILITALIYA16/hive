import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Home%20Page/destination%202.dart';
import 'package:hive/Widget/Button.dart';
import 'package:hive/Widget/next_push.dart';

import '../Widget/body_backgraound.dart';
import 'destiation 3.dart';

class Destination_1 extends StatefulWidget {
  const Destination_1({Key? key}) : super(key: key);

  @override
  State<Destination_1> createState() => _Destination_1State();
}

class _Destination_1State extends State<Destination_1> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
                onTap: () {
                  Next_Screen(context, Destination_3());
                },
                child: Text("Done", style: GoogleFonts.rubik(fontSize: 17))),
          ),
        ],
        title: Text("Where to?", style: GoogleFonts.rubik(fontSize: 17)),
        backgroundColor: Color(0xff143048),
        elevation: 0,
      ),
      // extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Body_Background(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
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
                        GestureDetector(
                          onTap: () {
                            // print("next svreen");
                            Next_Screen(context, Destination_3());
                          },
                          child: Container(
                            height: h * 0.09,
                            width: w * 0.95,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 0,
                                  child: Icon(
                                    CupertinoIcons.calendar,
                                    color: Color(0xff143048),
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.symmetric(
                                                vertical: 2),
                                        child: Text("Arrval Date",
                                            style: GoogleFonts.rubik(
                                                fontSize: 15,
                                                fontWeight:
                                                    FontWeight.w400,
                                                color: Colors.black)),
                                      ),
                                      Text("16,Dec 2022",
                                          style: GoogleFonts.rubik(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Icon(CupertinoIcons.arrow_right),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Icon(
                                    CupertinoIcons.calendar,
                                    color: Color(0xff143048),
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.symmetric(
                                                vertical: 2),
                                        child: Text("Departure Date",
                                            style: GoogleFonts.rubik(
                                                fontSize: 15,
                                                fontWeight:
                                                    FontWeight.w400,
                                                color: Colors.black)),
                                      ),
                                      Text("16,Dec 2022",
                                          style: GoogleFonts.rubik(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.017,
                  ),
                  Container(
                    height: h * 0.38,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfffdfdff),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Set Room",
                              style: GoogleFonts.rubik(
                                  color: Color(0xff143048),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Divider(
                          indent: 2,
                          color: Colors.grey,
                          endIndent: 2,
                        ),
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Aldut",
                                style: GoogleFonts.rubik(
                                    color: Color(0xff143048),
                                    fontSize: 14.7,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              width: w * 0.3,
                            ),
                            CircleAvatar(
                              radius: 17,
                              child: Icon(CupertinoIcons.minus, size: 18),
                              backgroundColor: Color(0xff143048),
                            ),
                            Text("2",
                                style: GoogleFonts.rubik(
                                    color: Color(0xff143048),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            CircleAvatar(
                              radius: 17,
                              child: Icon(CupertinoIcons.add, size: 18),
                              backgroundColor: Color(0xff143048),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Chilren",
                                style: GoogleFonts.rubik(
                                    color: Color(0xff143048),
                                    fontSize: 14.7,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              width: w * 0.26,
                            ),
                            CircleAvatar(
                              radius: 17,
                              child: Icon(CupertinoIcons.minus,
                                  size: 18, color: Colors.black),
                              backgroundColor: Colors.grey[200],
                            ),
                            Text("0",
                                style: GoogleFonts.rubik(
                                    color: Color(0xff143048),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            CircleAvatar(
                              radius: 17,
                              child: Icon(CupertinoIcons.add, size: 18),
                              backgroundColor: Color(0xff143048),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Pets",
                                style: GoogleFonts.rubik(
                                    color: Color(0xff143048),
                                    fontSize: 14.7,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              width: w * 0.32,
                            ),
                            CircleAvatar(
                              radius: 17,
                              child: Icon(CupertinoIcons.minus,
                                  size: 18, color: Colors.black),
                              backgroundColor: Colors.grey[200],
                            ),
                            Text("0",
                                style: GoogleFonts.rubik(
                                    color: Color(0xff143048),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            CircleAvatar(
                              radius: 17,
                              child: Icon(CupertinoIcons.add, size: 18),
                              backgroundColor: Color(0xff143048),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: w * 0.036,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  button(
                      text: Text("Next",
                          style: GoogleFonts.rubik(
                              color: Colors.white, fontSize: 16)),
                      navi: Destination_3()),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
