import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Widget/scroll%20page.dart';

class Room_Detail extends StatefulWidget {
  const Room_Detail({Key? key}) : super(key: key);

  @override
  State<Room_Detail> createState() => _Room_DetailState();
}

class _Room_DetailState extends State<Room_Detail> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                      height: h * 0.53,
                      color: Colors.amber,
                      child: Scroll_Page()),
                  Positioned(
                    bottom: 30,
                    child: Padding(
                      padding: EdgeInsets.only(left: w * 0.05),
                      child: Container(
                        height: h * 0.12,
                        width: w * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black12.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: h * 0.025, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hotel Room Bad View",
                                  style: GoogleFonts.rubik(
                                      color: Colors.white, fontSize: 16)),
                              Text(
                                  "It shows the bed with the bed lightings and backdoard",
                                  style: GoogleFonts.rubik(
                                      color: Colors.white, fontSize: 13.5)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
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
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
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
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "For your Comfort",
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 15.5,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(CupertinoIcons.minus)
                ],
              ),
            ),
            // Text(
            //   "• Air Conditioning",
            //   style: GoogleFonts.rubik(
            //       color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "• Air Conditioning \n• Bathrobe \n• Complimentary Beverage\n• Connecting Rooms\n• Non-Smoking\n• Roll-in Shower\n• Business Center\n• Fitness Center\n• Meeting Rooms\n• Free Parking\n• Outdoor Pool",
                style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "For your Convenience",
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(CupertinoIcons.add)
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "For your Convenience",
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(CupertinoIcons.add)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
