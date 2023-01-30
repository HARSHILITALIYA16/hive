import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Room%20Control/air%20conditioner.dart';
import 'package:hive/Room%20Control/door.dart';
import 'package:hive/Room%20Control/light.dart';
import 'package:hive/Room%20Control/room%20control%20bathroom.dart';
import 'package:hive/Room%20Control/service%20GYM.dart';
import 'package:hive/Room%20Control/service%20SPA.dart';
import 'package:hive/Room%20Control/tv%20control.dart';
import 'package:hive/Room%20Control/wifi.dart';

import '../Widget/next_push.dart';

class Room_Control extends StatefulWidget {
  const Room_Control({Key? key}) : super(key: key);

  @override
  State<Room_Control> createState() => _Room_ControlState();
}

class _Room_ControlState extends State<Room_Control> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  List _image = [
    "assets/reception.png",
    "assets/spa.png",
    "assets/gym.png",
    "assets/pool.png",
    "assets/laundry.png",
    "assets/food_order.png",
    "assets/feedback.png",
  ];

  List _text = [
    "Reception",
    "SPA",
    "GYM",
    "Pool",
    "Laundry",
    "Food Order",
    "Feedback",
  ];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawer: Container(
        width: w * 0.4,
        child: Drawer(
          backgroundColor: Colors.teal.withOpacity(.6),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.cancel_outlined, color: Colors.white)),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      index == 1
                          ? Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Service_SPA(),
                            ))
                          : index == 2
                              ? Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Service_GYM(),
                                ))
                              : null;
                    },
                    child: Container(
                      height: h * 0.117,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(_image[index]),
                          Padding(
                            padding: EdgeInsets.only(top: h * 0.01),
                            child: Text(_text[index],
                                style:
                                    GoogleFonts.rubik(color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      endDrawerEnableOpenDragGesture: false,
      key: _scaffoldKey,
      backgroundColor: Color(0xff2C2F3D),
      appBar: AppBar(
        title: Text("Room Control | Room 515",
            style: GoogleFonts.rubik(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(children: [
        Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.bedroom_child_outlined,
                  color: Colors.white,
                  size: 35,
                ),
                Text(
                  "Bedroom",
                  style: GoogleFonts.rubik(color: Colors.white, fontSize: 16),
                ),
                SizedBox(
                  width: w * 0.4,
                ),
                Text(
                  "20 C",
                  style: GoogleFonts.rubik(color: Colors.white, fontSize: 15),
                ),
                Icon(
                  Icons.thermostat_outlined,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
        Stack(
          children: [
            Container(
              height: h * 0.43,
              width: w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/180451126/photo/hotel-standard-room.jpg?s=612x612&w=0&k=20&c=iu4nL4_zUf7AI6iL74zvpqHFg-0AFR3bdTP68WJf5_g="),
                      fit: BoxFit.cover),
                  gradient: LinearGradient(colors: [
                    Colors.red,
                    Color(0xff0A0D1859).withOpacity(0.5),
                    Color(0xff2C2F3D)
                  ])),
            ),
            Container(
              height: h * 0.43,
              width: w,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.transparent,
                Color(0xff2c2f3d).withOpacity(0.8),
                Color(0xff2c2f3d)
              ], end: Alignment.bottomLeft, begin: Alignment.topLeft)),
              child: Padding(
                padding: EdgeInsets.only(top: h * 0.28),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: h * 0.12,
                            width: w * 0.24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff10ba89),
                            ),
                            child: Icon(
                              Icons.bedroom_child_outlined,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Text(
                            "Bedroom",
                            style: GoogleFonts.rubik(
                                color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          // print("next svreen");
                          Next_Screen(context, Room_Control_Bathroom());
                        },
                        child: Column(
                          children: [
                            Container(
                              height: h * 0.12,
                              width: w * 0.24,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: Colors.blueGrey, width: 2)),
                              child: Icon(
                                Icons.bathtub_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            Text(
                              "Bathroom",
                              style: GoogleFonts.rubik(
                                  color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
          child: Row(
            children: [
              Text(
                "Choose Facilities",
                style: GoogleFonts.rubik(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  // print("next svreen");
                  Next_Screen(context, Door());
                },
                child: Column(
                  children: [
                    Container(
                      height: h * 0.12,
                      width: w * 0.24,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.blueGrey, width: 2)),
                      child: Icon(
                        Icons.door_back_door_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Text(
                      "Door",
                      style:
                          GoogleFonts.rubik(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // print("next svreen");
                  Next_Screen(context, TV_Control());
                },
                child: Column(
                  children: [
                    Container(
                      height: h * 0.12,
                      width: w * 0.24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff10ba89),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Icon(
                        Icons.tv,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Text(
                      "TV",
                      style:
                          GoogleFonts.rubik(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // print("next svreen");
                  Next_Screen(context, Air_Conditioner());
                },
                child: Column(
                  children: [
                    Container(
                      height: h * 0.12,
                      width: w * 0.24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff10ba89),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Icon(
                        Icons.airline_seat_flat_sharp,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Text(
                      "AC",
                      style:
                          GoogleFonts.rubik(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  // print("next svreen");
                  Next_Screen(context, Wifi());
                },
                child: Column(
                  children: [
                    Container(
                      height: h * 0.12,
                      width: w * 0.24,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.blueGrey, width: 2)),
                      child: Icon(
                        Icons.wifi_tethering,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Text(
                      "Wifi",
                      style: GoogleFonts.rubik(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // print("next svreen");
                  Next_Screen(context, Light());
                },
                child: Column(
                  children: [
                    Container(
                      height: h * 0.12,
                      width: w * 0.24,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.blueGrey, width: 2)),
                      child: Icon(
                        Icons.lightbulb_outline,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Text(
                      "Lighting",
                      style: GoogleFonts.rubik(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  _openEndDrawer();
                },
                child: Column(
                  children: [
                    Container(
                      height: h * 0.12,
                      width: w * 0.24,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.blueGrey, width: 2)),
                      child: Icon(
                        Icons.light_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Text(
                      "Service",
                      style: GoogleFonts.rubik(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
