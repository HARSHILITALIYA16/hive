import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Booking%20Pages/review_reservation.dart';
import 'package:hive/My%20Stay/check%20dectiated.dart';
import 'package:hive/Widget/body_backgraound.dart';

import '../Widget/next_push.dart';

class My_Stay extends StatefulWidget {
  const My_Stay({Key? key}) : super(key: key);

  @override
  State<My_Stay> createState() => _My_StayState();
}

class _My_StayState extends State<My_Stay> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(MaterialPageRoute(builder: (context) => Review_reservation(),));
          },
          icon: Icon(CupertinoIcons.arrow_left),
        ),
        elevation: 0,
        backgroundColor: Color(0xff143048),
      ),
      body: Stack(
        children: [
          Body_Background(),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: ListView(
              children: [
                Text(
                  "My Stay",
                  style: GoogleFonts.rubik(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 0.5),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    height: h * 0.065,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffdcdfe2).withOpacity(0.98)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Card(
                            child: Container(
                                height: h * 0.05,
                                width: w * 0.26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xff143048).withOpacity(0.9)),
                                child: Center(
                                    child: Text(
                                  "Upcomming",
                                  style: GoogleFonts.rubik(color: Colors.white),
                                ))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Card(
                            child: Container(
                                height: h * 0.05,
                                width: w * 0.26,
                                color: Colors.transparent,
                                child: Center(
                                    child: Text(
                                  "Past",
                                  style: GoogleFonts.rubik(color: Colors.black),
                                ))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Card(
                            child: Container(
                                height: h * 0.05,
                                width: w * 0.26,
                                color: Colors.transparent,
                                child: Center(
                                    child: Text(
                                  "Cancelled",
                                  style: GoogleFonts.rubik(color: Colors.black),
                                ))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    height: h * 0.11,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffdcdfe2).withOpacity(0.98)),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Reservation Code",
                              label: Text("Already booked?"),
                              prefixIcon: Icon(
                                Icons.exit_to_app_outlined,
                              )),
                        ),
                        Divider(
                          endIndent: 20,
                          indent: 20,
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                      height: h * 0.27,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.99)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 4,),
                            Text(
                              "Standard Room, 1 King sized bed, City view, Flexible Rate",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            Text(
                              "Hive Lake Placid 1991  /  10, Nov - 16, Nov",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                            Text(
                              "Reservation Code",
                              style: GoogleFonts.rubik(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                            Row(
                              children: [
                                Text(
                                  "022091000007",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Icon(
                                    Icons.upload_outlined,
                                    color: Color(0xff143048),
                                  ),
                                ),
                                Text(
                                  "Share Code",
                                  style: GoogleFonts.rubik(
                                      color: Color(0xff143048),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                            Container(
                              height: 49,
                              width: 110,
                              child: Card(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Next_Screen(context, Check_Deactivated());
                                  },
                                  child: Text("Check in"),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff234e75),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 4,),

                          ],
                        ),
                      )),
                ),Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                      height: h * 0.27,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.99)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 4,),
                            Text(
                              "Standard Room, 1 King sized bed, City view, Flexible Rate",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            Text(
                              "Hive Lake Placid 1991  /  10, Nov - 16, Nov",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                            Text(
                              "Reservation Code",
                              style: GoogleFonts.rubik(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                            Row(
                              children: [
                                Text(
                                  "022091000007",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Icon(
                                    Icons.upload_outlined,
                                    color: Color(0xff143048),
                                  ),
                                ),
                                Text(
                                  "Share Code",
                                  style: GoogleFonts.rubik(
                                      color: Color(0xff143048),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                Container(height: 28,width: 60,
                                  child: Center(
                                    child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.redAccent.withOpacity(0.1)),
                                        onPressed: (){}, child: Text("Unpaid!",style: GoogleFonts.rubik(color: Colors.red,fontSize: 13),)),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 49,
                                  width: 110,
                                  child: Card(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Check in"),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff234e75),
                                      ),
                                    ),
                                  ),
                                ),Container(
                                  height: 49,
                                  width: 110,
                                  child: Card(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Play Now"),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:Color(0xff0da377)
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4,),

                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
