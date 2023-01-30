import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Booking%20Pages/payment%20method%201.dart';

import '../Widget/body_backgraound.dart';
import '../Widget/voucher.dart';

class Add_special_rate_code extends StatefulWidget {
  const Add_special_rate_code({Key? key}) : super(key: key);

  @override
  State<Add_special_rate_code> createState() => _Add_special_rate_codeState();
}

class _Add_special_rate_codeState extends State<Add_special_rate_code> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Add Special Rate Code",
          style: GoogleFonts.rubik(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: h * 0.025),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Payment_method_1(),
                ));
              },
              child: Text(
                "Done",
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
                      height: h * 0.1,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                label: Text("Add More Promotion Code"),
                                prefixIcon: Icon(
                                  Icons.local_offer_outlined,
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
                    padding: EdgeInsets.only(left: w * 0.02, top: h * 0.01),
                    child: Container(
                      height: h * 0.78,
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
                            child: Text("Your promotion code",
                                style: GoogleFonts.rubik(
                                  fontSize: h * 0.02,
                                  color: Colors.black,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: h * 0.01),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.05, top: h * 0.03),
                            child: Container(
                              // height: h * 0.3,
                              // width: w * 0.95,
                              height: h * 0.13,
                              width: w * 0.8,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Voucher(
                                  text: Text(
                                    "CODE: SUNSHINE",
                                    style:
                                        GoogleFonts.rubik(color: Colors.black),
                                  ),
                                  text1: Text(
                                    "25% off your total bill",
                                    style:
                                        GoogleFonts.rubik(color: Colors.black),
                                  ),
                                  color: Color(0xff0fb082)),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.05, top: h * 0.03),
                            child: Container(
                              // height: h * 0.3,
                              // width: w * 0.95,
                              height: h * 0.13,
                              width: w * 0.8,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Voucher(
                                  text: Text(
                                    "CODE: SUNSHINE",
                                    style:
                                        GoogleFonts.rubik(color: Colors.black),
                                  ),
                                  text1: Text(
                                    "25% off your total bill",
                                    style:
                                        GoogleFonts.rubik(color: Colors.black),
                                  ),
                                  color: Color(0xff3c64ec)),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.05, top: h * 0.03),
                            child: Container(
                              // height: h * 0.3,
                              // width: w * 0.95,
                              height: h * 0.13,
                              width: w * 0.8,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Voucher(
                                  text: Text(
                                    "CODE: SUNSHINE",
                                    style:
                                        GoogleFonts.rubik(color: Colors.black),
                                  ),
                                  text1: Text(
                                    "25% off your total bill",
                                    style:
                                        GoogleFonts.rubik(color: Colors.black),
                                  ),
                                  color: Color(0xff8c50c2)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
