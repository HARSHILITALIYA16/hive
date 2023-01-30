import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Home%20Page/room%20listing.dart';
import 'package:hive/Home%20Page/room%20options.dart';
import 'package:hive/Widget/Star_Rating.dart';
import 'package:hive/Widget/scroll%20page%202.dart';

import '../Widget/next_push.dart';

class Hotel_Detail extends StatefulWidget {
  const Hotel_Detail({Key? key}) : super(key: key);

  @override
  State<Hotel_Detail> createState() => _Hotel_DetailState();
}

class _Hotel_DetailState extends State<Hotel_Detail> {
  final im = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq-0H0XvgydulrbUR_yyJvrLfaECvKFa8-Yo8u3oeI&s",
    "https://media.istockphoto.com/id/180451126/photo/hotel-standard-room.jpg?s=612x612&w=0&k=20&c=iu4nL4_zUf7AI6iL74zvpqHFg-0AFR3bdTP68WJf5_g=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnWbuFHD1v42tR_f1r3CV-jDcy7w4BvuZToKkfJGBH&s"
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffeaebff),
      // appBar:
      //     AppBar(elevation: 0, backgroundColor: Colors.transparent, actions: [
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Icon(Icons.save_alt_rounded),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Icon(Icons.exit_to_app_outlined),
      //   )
      // ]),
      // extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          Stack(children: [
            Container(height: 400, child: Scroll_Page2()),
            Positioned(
              bottom: 75,
              right: 10,
              child: Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Icon(Icons.border_all), Text("All Photo")],
                  )),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  // print("next svreen");
                  Next_Screen(context, Room_Listing());
                },
                child: Container(
                  height: 65,
                  width: w * 0.95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text("Arrival Date",
                                style: GoogleFonts.rubik(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                            Text("10,Nov",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Deparure Date",
                                style: GoogleFonts.rubik(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                            Text("16,Nov",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Gest",
                                style: GoogleFonts.rubik(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                            Text("4",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Room",
                                style: GoogleFonts.rubik(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                            Text("2",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
                height: h * 0.6,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfffefeff)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Hive Lake Placid",
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey,
                              size: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                "Adress :",
                                style: GoogleFonts.rubik(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 14),
                              ),
                            ),
                            Text(
                              "Lake Placid, New York, US :",
                              style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.call,
                              color: Colors.grey,
                              size: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                "Hotline :",
                                style: GoogleFonts.rubik(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 14),
                              ),
                            ),
                            Text(
                              "+84 989 099 999",
                              style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Divider(height: 10, color: Colors.grey),
                      Row(
                        children: [
                          Rating(color: Colors.amber),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("All Review",
                                        style: GoogleFonts.rubik(
                                            color: Colors.green)),
                                  ),
                                  Icon(
                                    CupertinoIcons.arrow_right,
                                    color: Colors.green,
                                    size: 15,
                                  )
                                ],
                              ))
                        ],
                      ),
                      Divider(height: 10, color: Colors.grey),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xffc5c7fe),
                                    Color(0xfff9f4fe)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.amberAccent[400]),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.electric_bolt_outlined,
                                          color: Colors.white),
                                      Text("Member Discount",
                                          style: GoogleFonts.rubik(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15)),
                                      Text("1 day 11:11:55",
                                          style: GoogleFonts.rubik(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.5)),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Card(
                                  shadowColor: Colors.grey,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 14,
                                      child: Icon(
                                        CupertinoIcons.percent,
                                        size: 14,
                                      )),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "Discount   ",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black54,
                                                fontSize: 15.5)),
                                        TextSpan(
                                            text: "15%",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500)),
                                        TextSpan(
                                            text: "\t\t\tCode:   ",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black54,
                                                fontSize: 15.5)),
                                        TextSpan(
                                            text: "WEEKEND",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500))
                                      ])),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "Minimum booking:   ",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black54,
                                                fontSize: 15.5)),
                                        TextSpan(
                                            text: "\$500",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500)),
                                      ])),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "Check-in time:   ",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black54,
                                                fontSize: 15.5)),
                                        TextSpan(
                                            text: "FLEXIBLE",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                      ])),
                                    ],
                                  ),
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Card(
                                  shadowColor: Colors.grey,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 14,
                                      child: Icon(
                                        CupertinoIcons.percent,
                                        size: 14,
                                      )),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 35),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "Discount  ",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black54,
                                                fontSize: 15.5)),
                                        TextSpan(
                                            text: "15%",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500)),
                                        TextSpan(
                                            text: "\t\tCode: ",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black54,
                                                fontSize: 15.5)),
                                        TextSpan(
                                            text: "SUMMERTIME",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500))
                                      ])),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "Check-in time:   ",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black54,
                                                fontSize: 15.5)),
                                        TextSpan(
                                            text: "FLEXIBLE",
                                            style: GoogleFonts.rubik(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                      ])),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
                height: h * 0.72,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfffefeff)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: h * 0.27,
                          width: w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Map1.png",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Container(
                        height: h * 0.41,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  Text("0.8 km from centre",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star),
                                  Text("8.8 - Excellent location!",
                                      style: GoogleFonts.rubik(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
                                ],
                              ),
                              Text("Based on 341 locationss ratings",
                                  style: GoogleFonts.rubik(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15)),
                              Divider(),
                              Text("Popular Places",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("• Temple of Literature",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                  Text("200m",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("• Vietnam Fine Arts Museum",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                  Text("340m",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("• One Lillar Pagoda",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                  Text("500m",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("• Ho Chi Minh Mausoleum",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                  Text("1.2Km",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("• Old Quarter",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                  Text("1.3Km",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ],
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Read More",
                                    style: TextStyle(color: Colors.blueAccent),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: h * 0.45,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xfffefeff)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Icons.electric_bolt_outlined,
                              color: Color(0xff183754)),
                          Text("Hotel Description",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15)),
                        ],
                      ),
                    ),
                    Divider(),
                    // Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam…Read More",
                    //     style: GoogleFonts.rubik(
                    //         color: Colors.black,
                    //         fontWeight: FontWeight.w500,
                    //         fontSize: 15)),
                    Expanded(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam…",
                            style: GoogleFonts.rubik(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: 15)),
                        TextSpan(
                            text: "Read More",
                            style: GoogleFonts.rubik(
                                color: Color(0xff183754),
                                fontWeight: FontWeight.w500,
                                fontSize: 15))
                      ])),
                    ),
                    Container(
                      height: 40,
                      child: ListTile(
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black87,
                          size: 15,
                        ),
                        leading: Icon(Icons.apps, color: Color(0xff183754)),
                        title: Text("Falcilities",
                            style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ),
                    ),
                    Divider(),
                    Container(
                      height: 40,
                      child: ListTile(
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black87,
                          size: 15,
                        ),
                        leading:
                            Icon(Icons.error_outline, color: Color(0xff183754)),
                        title: Text("Hotel Policies",
                            style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ),
                    ),
                    Divider(),
                    Container(
                      height: 40,
                      child: ListTile(
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black87,
                          size: 15,
                        ),
                        leading:
                            Icon(Icons.electric_bolt, color: Color(0xff183754)),
                        title: Text("Important Information",
                            style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(CupertinoIcons.photo_on_rectangle,
                    color: Color(0xff183754)),
                Text("  Explor Rooms",
                    style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w500, color: Colors.black)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: h * 0.28,
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      index == 0
                          ? Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Room_Option(),
                            ))
                          : null;
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: w * 0.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(im[index]),
                                  fit: BoxFit.cover))),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: h * 0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  color: Color(0xff183754)),
              child: GestureDetector(
                onTap: () {
                  // print("next svreen");
                  Next_Screen(context, Room_Listing());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Select Room From \$250",
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white)),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
