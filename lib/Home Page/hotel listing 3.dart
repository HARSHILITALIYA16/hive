import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Home%20Page/hotel%20detail.dart';
import 'package:hive/Widget/Star_Rating.dart';
import 'package:hive/Widget/body_backgraound.dart';

import '../Widget/next_push.dart';
import 'destiation 3.dart';

class Hotel_Listing_3 extends StatefulWidget {
  const Hotel_Listing_3({Key? key}) : super(key: key);

  @override
  State<Hotel_Listing_3> createState() => _Hotel_Listing_3State();
}

class _Hotel_Listing_3State extends State<Hotel_Listing_3> {
  @override
  Widget build(BuildContext context) {
    final hotel_name = [
      "Hive Lake Placid Hotel",
      "Hive Lake Placid Resort",
      "Hive Lake Placid 1991",
      "HIve Lake Placid Studio"
    ];
    final im = [
      "assets/christian-lambert-vmIWr0NnpCQ-unsplash.png",
      "assets/francesca-saraco-_dS27XGgRyQ-unsplash.png",
      "assets/valeriia-bugaiova-_pPHgeHz1uk-unsplash.png",
      "assets/li-yang-a8iCZvtrHpQ-unsplash.png"
    ];
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffeaebfe),
        appBar: AppBar(
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.exit_to_app_outlined, size: 25),
            )
          ],
          title: Column(
            children: [
              Text("Lake Placid", style: GoogleFonts.rubik(fontSize: 16)),
              Text("10 - 16 Nov, 2 Room, 3 Adult, 0 Kids",
                  style: GoogleFonts.rubik(fontSize: 13)),
            ],
          ),
          bottom: TabBar(tabs: [
            Tab(
              child: Text("Top Result"),
            ),
            Tab(
              child: Text("Distance"),
            ),
            Tab(
              child: Text("Review"),
            ),
            Tab(
              child: Text("Rating"),
            )
          ]),
          backgroundColor: Color(0xff143048),
          elevation: 0,
        ),
        body: Stack(
          children: [
            Body_Background(),
            ListView(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 50,
                        width: w * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber.withOpacity(0.8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(CupertinoIcons.lock, color: Colors.white),
                            Text(
                              "Sign in now to unlock Private Deals",
                              style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Icon(
                              Icons.cancel_outlined,
                              color: Colors.white,
                            )
                          ],
                        )),
                    SizedBox(
                      height: 7,
                    ),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: GestureDetector(  onTap: () {
                              // print("next svreen");
                              Next_Screen(context, Hotel_Detail());
                            },
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 10,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Container(
                                        height: h * 0.23,
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
                                          height: h * 0.12,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${hotel_name[index]}",
                                                style: GoogleFonts.rubik(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                              Rating(color: Colors.amber),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                      Icons.location_on_outlined),
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
                                                        style: GoogleFonts.rubik(
                                                            color: Colors.black)),
                                                    TextSpan(
                                                        text: "250 USD",
                                                        style: GoogleFonts.rubik(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold)),
                                                  ]))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 45,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(CupertinoIcons.map_pin_ellipse),
                            Text(
                              "Map View",
                              style: GoogleFonts.rubik(),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                "|",
                                style: GoogleFonts.rubik(),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.filter_alt_outlined),
                                  Text(
                                    "Filter",
                                    style: GoogleFonts.rubik(),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
