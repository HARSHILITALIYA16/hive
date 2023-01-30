import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Room%20Control/locked.dart';
import 'package:hive/Room%20Control/room%20ready.dart';
import 'package:hive/Widget/Button.dart';
import 'package:hive/Widget/body_backgraound.dart';

import '../My Stay/check dectiated.dart';
import '../Widget/next_push.dart';

class Room_Not_Ready extends StatefulWidget {
  const Room_Not_Ready({Key? key}) : super(key: key);

  @override
  State<Room_Not_Ready> createState() => _Room_Not_ReadyState();
}

class _Room_Not_ReadyState extends State<Room_Not_Ready> {
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
                      height: 70,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffdcdfe2),
                      ),
                      child: ListTile(
                        leading: Container(
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xff143048),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                        ),
                        title: Text("Welcome!",
                            style: GoogleFonts.rubik(
                                color: Colors.black45, fontSize: 14)),
                        subtitle: Text("Mr. Johan Doe",
                            style: GoogleFonts.rubik(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Container(
                    height: h * 0.33,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffE3E6E8).withOpacity(0.95),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Hotel",
                                          style: GoogleFonts.rubik(
                                            color: Colors.black45,
                                          )),
                                      Text("Hive Lake Placid 1991",
                                          style: GoogleFonts.rubik(
                                              color: Color(
                                                0xff143048,
                                              ),
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.underline)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text("Stay Information",
                                          style: GoogleFonts.rubik(
                                            color: Colors.black45,
                                          )),
                                      Text("10, Nov - 16, Nov",
                                          style: GoogleFonts.rubik(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text("Reservation Code",
                                style: GoogleFonts.rubik(
                                  color: Colors.black45,
                                )),
                            Row(
                              children: [
                                Text("023091000009",
                                    style: GoogleFonts.rubik(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: Icon(
                                    Icons.ios_share_rounded,
                                    color: Color(0xff143048),
                                    size: 15,
                                  ),
                                ),
                                Text(
                                  "Share Code",
                                  style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff143048)),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.ios_share_rounded,
                                  color: Colors.green,
                                  size: 15,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    child: Text(
                                        maxLines: 2,
                                        "Your room have 1 slot avaiable. Invite them by sending them your Reservation Code.",
                                        style: GoogleFonts.rubik(
                                          fontSize: 13,
                                          color: Colors.green,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                Icon(
                                  Icons.key,
                                  color: Colors.green,
                                  size: 15,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    child: Text(
                                        maxLines: 2,
                                        "Your Digital Key & All Functions will activate automatically when your room is ready.",
                                        style: GoogleFonts.rubik(
                                          fontSize: 13,
                                          color: Colors.green,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // print("next svreen");
                    Next_Screen(context, Room_Ready());
                  },
                  child: Container(
                    height: h * 0.7,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfffdfeff).withOpacity(0.99),
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: w / 1,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
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
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // print("next svreen");
                                      Next_Screen(context, Locked());
                                    },
                                    child: CircleAvatar(
                                      radius: 40,
                                      backgroundColor: Color(0xff989ea6),
                                      child: Icon(
                                        Icons.vpn_key_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      ),
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
                            Expanded(
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Color(0xff989ea6),
                                    radius: 40,
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
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundColor: Color(0xff989ea6),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [],
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                      ),
                                      child: Icon(
                                        Icons.electric_bolt,
                                        color: Colors.white,
                                        size: 30,
                                      ),
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
                                      color: Color(0xff989ea6),
                                      boxShadow: [],
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    child: Icon(
                                      Icons.exit_to_app_outlined,
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
