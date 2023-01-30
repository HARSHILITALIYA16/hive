
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Room%20Control/bathroom%20light.dart';
import 'package:hive/Room%20Control/bathroom_floor_heting.dart';
import 'package:hive/Room%20Control/room%20control.dart';

import '../Widget/next_push.dart';

class Room_Control_Bathroom extends StatefulWidget {
  const Room_Control_Bathroom({Key? key}) : super(key: key);

  @override
  State<Room_Control_Bathroom> createState() => _Room_Control_BathroomState();
}

class _Room_Control_BathroomState extends State<Room_Control_Bathroom> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff2C2F3D),
      appBar: AppBar(
        centerTitle: true,
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
                  Icons.bathtub_outlined,
                  color: Colors.white,
                  size: 35,
                ),
                Text(
                  "Bathroom",
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
                      GestureDetector(  onTap: () {
                        // print("next svreen");
                        Next_Screen(context, Room_Control());
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
                      ),
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
              GestureDetector(  onTap: () {
                // print("next svreen");
                Next_Screen(context, Bathroom_light());
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
              Column(
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
                    style: GoogleFonts.rubik(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              Column(
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
                      Icons.add_chart_outlined,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                  Text(
                    "Aromatherary",
                    style: GoogleFonts.rubik(color: Colors.white, fontSize: 14),
                  )
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: GestureDetector(  onTap: () {
                // print("next svreen");
                Next_Screen(context, Bathroom_floor_heting());
              },
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: h * 0.12,
                      width: w * 0.24,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.blueGrey, width: 2)),
                      child: Icon(
                        Icons.heat_pump_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Text(
                      "Floor heating",
                      style: GoogleFonts.rubik(color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
