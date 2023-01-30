import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Booking%20Pages/summary.dart';
import 'package:hive/Home%20Page/room%20listing.dart';
import 'package:hive/Screen/sign%20in.dart';

import 'package:hive/widget/button.dart';

import '../Widget/body_backgraound.dart';
import '../Widget/next_push.dart';


class Review_reservation extends StatefulWidget {
  const Review_reservation({Key? key}) : super(key: key);

  @override
  State<Review_reservation> createState() => _Review_reservationState();
}

class _Review_reservationState extends State<Review_reservation> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Next_Screen(context, Room_Listing());
          },
          icon: Icon(CupertinoIcons.arrow_left),
        ),
        elevation: 0,
        title: Text(
          "Review Reservation",
          style: GoogleFonts.rubik(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(5),
            child: GestureDetector(  onTap: () {
              // print("next svreen");
              Next_Screen(context, Sign_in());
            },
              child: Text(
                "Sign in",
                style: GoogleFonts.rubik(color: Colors.white),
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xff143048),
      ),
      body: Stack(
        children: [
          Body_Background(),
          ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.02),
                    child: Container(
                      height: h * 0.3,
                      width: w * 0.95,
                      child: Image.asset("assets/Thumbnail.png",
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.02),
                    child: Container(
                      height: h * 0.57,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.05, top: h * 0.03),
                            child: Text("Hive Lake Placid 1991",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: h * 0.02,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.05, top: h * 0.02),
                            child: Text("Lake Placid, New York, Us",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: w * 0.05),
                            child: Text("+1 48261614",
                                style: GoogleFonts.rubik(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: h * 0.01),
                            child: Divider(
                              endIndent: 20,
                              indent: 20,
                              thickness: 1,
                            ),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: w * 0.05, top: h * 0.01),
                                    child: Text("Stay Information",
                                        style: GoogleFonts.rubik(
                                          fontSize: 13,
                                          color: Colors.grey,
                                        )),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: w * 0.05, top: h * 0.01),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "10,Nov-16,Nov        ",
                                          style: GoogleFonts.rubik(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: "(5 Night)",
                                                style: GoogleFonts.rubik(
                                                  fontSize: 13,
                                                  color: Colors.grey,
                                                )),
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text("Change",
                                          style: GoogleFonts.rubik(
                                            fontSize: 13,
                                          )),
                                      Icon(Icons.arrow_forward_ios),
                                    ],
                                  )),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: h * 0.01),
                            child: Divider(
                              endIndent: 20,
                              indent: 20,
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.05, top: h * 0.01),
                            child: Text("Room & Guest",
                                style: GoogleFonts.rubik(
                                  fontSize: 13,
                                  color: Colors.grey,
                                )),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.05, top: h * 0.01),
                            child: Text("2 Room, 4 Guest",
                                style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: h * 0.01),
                            child: Divider(
                              endIndent: 20,
                              indent: 20,
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.05, top: h * 0.01),
                            child: Text("Room Type",
                                style: GoogleFonts.rubik(
                                  fontSize: 13,
                                  color: Colors.grey,
                                )),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.05, top: h * 0.01),
                            child: Text(
                                "1 x Standard Room, 1 King sized bed, City view, Flexible Rate",
                                style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                )),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.05, top: h * 0.01),
                            child: Text(
                                "1 x Superior Room, Twin beds, City view, Flexible Rate",
                                style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                )),
                          ),
                          Expanded(flex: 20,
                            child: Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                    TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Text("Change",
                                            style: GoogleFonts.rubik(
                                              fontSize: 13,
                                            )),
                                        Icon(Icons.arrow_forward_ios),
                                      ],
                                    )),
                                  ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.02, top: h * 0.01),
                    child: Container(
                      height: h * 0.35,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.05, top: h * 0.03),
                            child: Text("Enter Guest Information",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: h * 0.01),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          SizedBox(height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  label: Text("Your Name"),
                                  prefixIcon: Icon(
                                    CupertinoIcons.person,
                                  )),
                            ),
                          ),
                          Divider(
                            endIndent: 20,
                            indent: 20,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  label: Text("Your Email"),
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                  )),
                            ),
                          ),
                          Divider(
                            endIndent: 20,
                            indent: 20,
                            thickness: 1,
                          ),
                          SizedBox(height: 40,
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  label: Text("Your Phone Number"),
                                  prefixIcon: Icon(
                                    Icons.phone,
                                  )),
                            ),
                          ),
                          Divider(
                            endIndent: 20,
                            indent: 20,
                            thickness: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.02, top: h * 0.01),
                    child: Container(
                        height: h * 0.1,
                        width: w * 0.95,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: button(
                              text: Text("Continue",
                                  style:
                                      GoogleFonts.rubik(color: Colors.white)),
                              navi: Summary()),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
