import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Room%20Control/locked.dart';
import 'package:hive/Room%20Control/room%20control.dart';
import 'package:hive/Widget/Button.dart';
import 'package:hive/Widget/body_backgraound.dart';

import '../My Stay/check dectiated.dart';
import '../Widget/next_push.dart';

class Room_Ready extends StatefulWidget {
  const Room_Ready({Key? key}) : super(key: key);

  @override
  State<Room_Ready> createState() => _Room_ReadyState();
}

class _Room_ReadyState extends State<Room_Ready> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff143048),
        title: Column(
          children: [
            Text("My Room",
                style: GoogleFonts.rubik(color: Colors.white, fontSize: 16)),
            Text("Room 515 | Floor 5 | 2 Peoples",
                style: GoogleFonts.rubik(color: Colors.white, fontSize: 14)),
          ],
        ),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Body_Background(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Container(
                      height: 80,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffdcdfe2),
                      ),
                      child: ListTile(
                        leading: Container(
                          width: 75,
                          child: Stack(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Color(0xff143048),
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.white, width: 2)),
                              ),
                              Positioned(
                                left: 25,
                                child: Container(
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color(0xff143048),
                                  ),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 2)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        title: Text("Welcome!",
                            style: GoogleFonts.rubik(
                                color: Colors.black45, fontSize: 14)),
                        subtitle: Text("Mr.  Johan Doe, Ms Anglea …",
                            style: GoogleFonts.rubik(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Container(
                    height: h * 0.1,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffdcdfe2).withOpacity(0.99),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: Text("Hotel",
                                          style: GoogleFonts.rubik(
                                            color: Colors.black45,
                                          )),
                                    ),
                                    Text("Hive Lake Placid 1991",
                                        style: GoogleFonts.rubik(
                                            color: Color(
                                              0xff143048,
                                            ),
                                            fontWeight: FontWeight.w400,
                                            decoration:
                                                TextDecoration.underline)),
                                  ],
                                ),
                                SizedBox(
                                  width: w * 0.1,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: Text("Stay Information",
                                          style: GoogleFonts.rubik(
                                            color: Colors.black45,
                                          )),
                                    ),
                                    Text("10, Nov - 16, Nov",
                                        style: GoogleFonts.rubik(
                                            color: Color(
                                              0xff143048,
                                            ),
                                            fontWeight: FontWeight.w400,
                                            decoration:
                                                TextDecoration.underline)),
                                  ],
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfffdfeff).withOpacity(0.99),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: w / 1,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'Room Control',
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  // print("next svreen");
                                  Next_Screen(context, Locked());
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: h / 9,
                                      width: w / 4,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color(0xffbdc2ff),
                                                spreadRadius: 2,
                                                blurRadius: 10,
                                                offset: Offset(4.5, 20))
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          gradient: LinearGradient(
                                              end: Alignment.topLeft,
                                              // begin: Alignment.bottomRight,
                                              colors: [
                                                Color(0xffd21ba7),
                                                Color(0xffe98f25),
                                              ])),
                                      child: Icon(
                                        Icons.vpn_key_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Text(
                                        "Digital Key",
                                        style: GoogleFonts.rubik(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  // print("next svreen");
                                  Next_Screen(context, Room_Control());
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: h / 9,
                                      width: w / 4,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color(0xffbdc2ff),
                                                spreadRadius: 2,
                                                blurRadius: 10,
                                                offset: Offset(4.5, 20))
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          gradient: LinearGradient(
                                              end: Alignment.topLeft,
                                              // begin: Alignment.bottomRight,
                                              colors: [
                                                Color(0xff653a8b),
                                                Color(0xffad62ef),
                                              ])),
                                      child: Icon(
                                        Icons.settings_remote_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Text(
                                        "In- Room Control",
                                        style: GoogleFonts.rubik(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: h / 9,
                                    width: w / 4,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0xffbdc2ff),
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              offset: Offset(4.5, 20))
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        gradient: LinearGradient(
                                            end: Alignment.topLeft,
                                            // begin: Alignment.bottomRight,
                                            colors: [
                                              Color(0xff0b916a),
                                              Color(0xff10b585),
                                            ])),
                                    child: Icon(
                                      Icons.electric_bolt,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text(
                                      "Service Request",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: h / 9,
                                    width: w / 4,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0xffbdc2ff),
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              offset: Offset(4.5, 20))
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        gradient: LinearGradient(
                                            end: Alignment.topLeft,
                                            // begin: Alignment.bottomRight,
                                            colors: [
                                              Color(0xfff6b80f),
                                              Color(0xffffd76b),
                                            ])),
                                    child: Icon(
                                      Icons.map_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text(
                                      "City Guide",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: h / 9,
                                    width: w / 4,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0xffbdc2ff),
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              offset: Offset(4.5, 20))
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        gradient: LinearGradient(
                                            end: Alignment.topLeft,
                                            // begin: Alignment.bottomRight,
                                            colors: [
                                              Color(0xff20486d),
                                              Color(0xff2a6092),
                                            ])),
                                    child: Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text(
                                      "Call Support",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: h / 9,
                                    width: w / 4,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0xffbdc2ff),
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              offset: Offset(4.5, 20))
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        gradient: LinearGradient(
                                            end: Alignment.topLeft,
                                            // begin: Alignment.bottomRight,
                                            colors: [
                                              Color(0xff212635),
                                              Color(0xff666c8b),
                                            ])),
                                    child: Icon(
                                      Icons.exit_to_app,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text(
                                      "Check-out",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
