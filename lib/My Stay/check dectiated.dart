import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/My%20Stay/check%20activated.dart';
import 'package:hive/Widget/body_backgraound.dart';
import 'package:hive/widget/button.dart';

import '../Widget/next_push.dart';

class Check_Deactivated extends StatefulWidget {
  const Check_Deactivated({Key? key}) : super(key: key);

  @override
  State<Check_Deactivated> createState() => _Check_DeactivatedState();
}

class _Check_DeactivatedState extends State<Check_Deactivated> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Standard Room, 1 King sized bed...",
            style: GoogleFonts.rubik(fontSize: 15)),
        elevation: 0,
        backgroundColor: Color(0xff143048),
      ),
      body: Stack(
        children: [
          Body_Background(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Container(
                    height: h * 0.12,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        color: Color(0xffdcdfe2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          height: h * 0.11,
                          width: w * 0.25,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/valeriia-bugaiova-_pPHgeHz1uk-unsplash.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text("Hive Lake Placid 1991",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontSize: h * 0.022,
                                      fontWeight: FontWeight.w500)),
                              Text("Lake Placid, New York, Us",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                              Text("+1 48261614",
                                  style: GoogleFonts.rubik(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    height: h * 0.43,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        color: Color(0xfffefeff),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Booking Information",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16)),
                              Icon(Icons.keyboard_arrow_up)
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Text("Reservation made in the name of",
                              style: GoogleFonts.rubik(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                          Text("Johan Doe",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Stay Information",
                              style: GoogleFonts.rubik(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                          Text("10, Nov - 16, Nov",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Night",
                              style: GoogleFonts.rubik(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                          Text("5 Night",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Room Type",
                              style: GoogleFonts.rubik(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                          Text(
                              "Standard Room, 1 King sized bed, City view, Flexible Rate",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Reservation Code",
                              style: GoogleFonts.rubik(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                          Row(
                            children: [
                              Text("022091000007",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14)),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
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
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: h * 0.2,
                  width: w * 0.95,
                  decoration: BoxDecoration(
                      color: Color(0xfffefeff),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: GestureDetector(  onTap: () {
                          // print("next svreen");
                          Next_Screen(context, Check_Activated());
                        },
                          child: Container(
                            color: Color(0xff989EA6),
                            height: 60,
                            child: Center(
                              child: Text(
                                  textAlign: TextAlign.center,
                                  "Check-in will become available only 48 hours before 12:00AM, 10 Jun 2019",
                                  style: GoogleFonts.rubik(
                                      color: Colors.white, fontSize: 13)),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Cancel Booking",
                        style: GoogleFonts.rubik(color: Colors.black),
                      ),
                      SizedBox(height: 2),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
