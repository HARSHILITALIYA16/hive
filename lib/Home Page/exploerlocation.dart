import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Widget/scroll%20page.dart';

import '../Widget/Star_Rating.dart';

class Exploer_Location extends StatefulWidget {
  const Exploer_Location({Key? key}) : super(key: key);

  @override
  State<Exploer_Location> createState() => _Exploer_LocationState();
}

class _Exploer_LocationState extends State<Exploer_Location> {
  final hotel_name = ["Hive Lake Placid 1991", "Hive Lake Placid Studio"];
  final im = [
    "assets/valeriia-bugaiova-_pPHgeHz1uk-unsplash.png",
    "assets/li-yang-a8iCZvtrHpQ-unsplash.png"
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Lake Placid",
            style: GoogleFonts.rubik(color: Colors.black, fontSize: 15),
          )),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 450, child: Scroll_Page()),
            Container(
              height: 200,
              width: w,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About Lake Placid",
                        style: GoogleFonts.rubik(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                        "Maybe you're not an Olympian, but if you're looking for a top-notch winter sports destination, Lake Placid is the place for you. Try bobsledding, downhill skiing, ice climbing, speed skating or even ski jumping, or just enjoy shopping in the town's boutiques and warming up in one of the many restaurants. But Lake Placid isn't just a ...",
                        style: GoogleFonts.rubik(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              decoration: BoxDecoration(color: Color(0xff2c2f3d)),
            ),
            Container(
              color: Color(0xff2c2f3d),
              child: Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: Container(
                  height: h * 0.5,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10)),
                      color: Color(0xffeaebff)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Essential Lake Placid",
                            style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        height: h * 0.45,

                        child: ListView.builder(
                            padding: EdgeInsets.only(top: 0),
                            physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 10,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
                                          height: h * 0.19,
                                          width: w * 0.9,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 135,
                                          width: 100,

                                          child: Image.asset(im[index]),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Container(
                                            height: h * 0.11,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${hotel_name[index]}",
                                                  style: GoogleFonts.rubik(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                                Rating(color: Colors.amber),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(Icons
                                                        .location_on_outlined),
                                                    Text(
                                                      "1.5 km from center",
                                                    ),
                                                  ],
                                                ),
                                                RichText(
                                                    textAlign: TextAlign.start,
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "From ",
                                                          style:
                                                              GoogleFonts.rubik(
                                                                  color: Colors
                                                                      .black)),
                                                      TextSpan(
                                                          text: "250 USD",
                                                          style:
                                                              GoogleFonts.rubik(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                    ]))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
