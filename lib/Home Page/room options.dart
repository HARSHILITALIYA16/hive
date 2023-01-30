import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Booking%20Pages/review_reservation.dart';
import 'package:hive/Home%20Page/room%20detail.dart';
import 'package:hive/Widget/Button.dart';
import 'package:hive/Widget/body_backgraound.dart';

import '../Widget/next_push.dart';

class Room_Option extends StatefulWidget {
  const Room_Option({Key? key}) : super(key: key);

  @override
  State<Room_Option> createState() => _Room_OptionState();
}

class _Room_OptionState extends State<Room_Option> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Select Your Room",
          style: GoogleFonts.rubik(fontSize: 16, color: Colors.white),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Body_Background(),
          Positioned(
            top: MediaQuery.of(context).size.height * .1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Standard Room",
                      style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        CupertinoIcons.rectangle_expand_vertical,
                        color: Colors.red,
                        size: 17,
                      ),
                      Text(
                        "Size:20m2",
                        style: GoogleFonts.rubik(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: w * 0.1,
                      ),
                      Icon(
                        CupertinoIcons.person,
                        color: Colors.red,
                        size: 17,
                      ),
                      Text(
                        "Max: 2 Adults, 1 Child",
                        style: GoogleFonts.rubik(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(clipBehavior: Clip.antiAlias,
                    // clipBehavior: Clip.antiAlias,
                    height: h * .8,
                    width: w * .9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white.withOpacity(.5),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 12,),
                          GestureDetector(  onTap: () {
                            // print("next svreen");
                            Next_Screen(context, Room_Detail());
                          },
                            child: Container(
                              height: 200,
                              color: Colors.red,
                              child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq-0H0XvgydulrbUR_yyJvrLfaECvKFa8-Yo8u3oeI&s",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50,
                                  child: button(
                                      text: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Text(
                                            "1 King sized bed, City view",
                                            style: GoogleFonts.rubik(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                      navi: Room_Detail()),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2),
                                  child: Text("FLEXIBLE RATE",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16)),
                                ),
                                Text(
                                    "• Cancel free of charge until 02 Jul 18:00",
                                    style: GoogleFonts.rubik(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15)),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                      "Take advantage of our most flexible rate, no modification of cancellation fees.",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(6.0),
                                              child: Text.rich(
                                                  TextSpan(children: [
                                                TextSpan(
                                                    text: "\$250",
                                                    style: GoogleFonts.rubik(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                                TextSpan(
                                                    text: "(Earn 5 Point)",
                                                    style: GoogleFonts.rubik(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ])),
                                            ),
                                            Text(
                                              "VAT not included: \$50",
                                              style: GoogleFonts.rubik(),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 40,
                                          width: 85,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors
                                                      .green
                                                      .withOpacity(0.8)),
                                              onPressed: () {
                                                Next_Screen(context, Review_reservation());
                                              },
                                              child: Text(
                                                "Book",
                                                style: GoogleFonts.rubik(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                      "Flexible Rate - Bed and Breakfast",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16)),
                                ),
                                Text(
                                    "• Cancel free of charge until 02 Jul 18:00",
                                    style: GoogleFonts.rubik(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15)),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Text("• Breakfast included",
                                      style: GoogleFonts.rubik(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ),
                                Text(
                                    "Take advantage of our most flexible offer, with adult breakfast included. Can be modified or cancelled fee or charge. Extra charge for children’s breakfast, in line with the hotel’s children policy",
                                    style: GoogleFonts.rubik(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15)),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(6.0),
                                              child: Text.rich(
                                                  TextSpan(children: [
                                                TextSpan(
                                                    text: "\$255",
                                                    style: GoogleFonts.rubik(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                                TextSpan(
                                                    text: "(Earn 6 Point)",
                                                    style: GoogleFonts.rubik(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ])),
                                            ),
                                            Text(
                                              "VAT not included: \$55",
                                              style: GoogleFonts.rubik(),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 40,
                                          width: 85,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors
                                                      .green
                                                      .withOpacity(0.8)),
                                              onPressed: () {},
                                              child: Text(
                                                "Book",
                                                style: GoogleFonts.rubik(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.time,
                                      color: Colors.red,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: Text(
                                        "Only 4 rooms left",
                                        style: GoogleFonts.rubik(
                                            color: Colors.red,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 200,
                            color: Colors.red,
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq-0H0XvgydulrbUR_yyJvrLfaECvKFa8-Yo8u3oeI&s",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50,
                                  child: button(
                                      text: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Text("Twin beds, City view",
                                            style: GoogleFonts.rubik(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                      navi: Room_Detail()),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2),
                                  child: Text("FLEXIBLE RATE",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16)),
                                ),
                                Text(
                                    "• Cancel free of charge until 02 Jul 18:00",
                                    style: GoogleFonts.rubik(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15)),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                      "Take advantage of our most flexible rate, no modification of cancellation fees.",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(6.0),
                                              child: Text.rich(
                                                  TextSpan(children: [
                                                TextSpan(
                                                    text: "\$250",
                                                    style: GoogleFonts.rubik(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                                TextSpan(
                                                    text: "(Earn 5 Point)",
                                                    style: GoogleFonts.rubik(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ])),
                                            ),
                                            Text(
                                              "VAT not included: \$50",
                                              style: GoogleFonts.rubik(),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 40,
                                          width: 85,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors
                                                      .green
                                                      .withOpacity(0.8)),
                                              onPressed: () {},
                                              child: Text(
                                                "Book",
                                                style: GoogleFonts.rubik(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                      "Flexible Rate - Bed and Breakfast",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16)),
                                ),
                                Text(
                                    "• Cancel free of charge until 02 Jul 18:00",
                                    style: GoogleFonts.rubik(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15)),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Text("• Breakfast included",
                                      style: GoogleFonts.rubik(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ),
                                Text(
                                    "Take advantage of our most flexible offer, with adult breakfast included. Can be modified or cancelled fee or charge. Extra charge for children’s breakfast, in line with the hotel’s children policy",
                                    style: GoogleFonts.rubik(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15)),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(6.0),
                                              child: Text.rich(
                                                  TextSpan(children: [
                                                TextSpan(
                                                    text: "\$255",
                                                    style: GoogleFonts.rubik(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                                TextSpan(
                                                    text: "(Earn 6 Point)",
                                                    style: GoogleFonts.rubik(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ])),
                                            ),
                                            Text(
                                              "VAT not included: \$55",
                                              style: GoogleFonts.rubik(),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 40,
                                          width: 85,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors
                                                      .green
                                                      .withOpacity(0.8)),
                                              onPressed: () {},
                                              child: Text(
                                                "Book",
                                                style: GoogleFonts.rubik(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.time,
                                      color: Colors.red,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: Text(
                                        "Only 4 rooms left",
                                        style: GoogleFonts.rubik(
                                            color: Colors.red,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                )
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
          )
        ],
      ),
    );
  }
}
