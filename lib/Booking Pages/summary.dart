import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Booking%20Pages/add%20special%20rate%20code.dart';
import 'package:hive/Booking%20Pages/payment%20method%201.dart';
import 'package:hive/Screen/payment%20method.dart';
import 'package:hive/Widget/body_backgraound.dart';
import 'package:hive/widget/button.dart';

import '../Widget/next_push.dart';

class Summary extends StatefulWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  bool isChecked = false;
  bool isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text(
            "Summary",
            style: GoogleFonts.rubik(color: Colors.white),
          ),
        ),
        backgroundColor: Color(0xff143048),
      ),
      body: Stack(
        children: [
          Body_Background(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: w * 0.01),
                  child: Container(
                    height: h * 0.15,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.93),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: w * 0.02),
                          child: Container(
                            height: h * 0.13,
                            width: w * 0.25,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/Thumbnail.png"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.05, top: h * 0.03),
                              child: Text("Hive Lake Placid 1991",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontSize: h * 0.02,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.05, top: h * 0.02),
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.01, top: h * 0.02),
                  child: Container(
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.93),
                        borderRadius: BorderRadius.circular(10)),
                    child: ExpansionTile(
                      title: Text('Bookin Infomation',
                          style: GoogleFonts.rubik(
                            color: Colors.black,
                            fontSize: h * 0.02,
                          )),
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: h * 0.02),
                              child: Divider(
                                endIndent: 20,
                                indent: 20,
                                thickness: 1,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: h * 0.02),
                                  child: Container(
                                    height: h * 0.06,
                                    width: w * 0.4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: w * 0.05),
                                          child: Text("Name",
                                              style: GoogleFonts.rubik(
                                                fontSize: 13,
                                                color: Colors.black54,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: w * 0.05),
                                          child: Text("Johan Doe",
                                              style: GoogleFonts.rubik(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: h * 0.02),
                                  child: Container(
                                    height: h * 0.06,
                                    width: w * 0.5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: w * 0.05),
                                          child: Text("Email",
                                              style: GoogleFonts.rubik(
                                                fontSize: 13,
                                                color: Colors.black54,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: w * 0.05),
                                          child: Text("johan09@gmail.com",
                                              style: GoogleFonts.rubik(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: h * 0.02),
                                  child: Container(
                                    height: h * 0.06,
                                    width: w * 0.4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: w * 0.05),
                                          child: Text("Phone",
                                              style: GoogleFonts.rubik(
                                                fontSize: 13,
                                                color: Colors.black54,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: w * 0.05),
                                          child: Text("+1  48261614",
                                              style: GoogleFonts.rubik(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: h * 0.02),
                                  child: Container(
                                    height: h * 0.06,
                                    width: w * 0.5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: w * 0.05),
                                          child: Text("Stay Information",
                                              style: GoogleFonts.rubik(
                                                fontSize: 13,
                                                color: Colors.black54,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: w * 0.05),
                                          child: Text("10, Nov- 16, Nov",
                                              style: GoogleFonts.rubik(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: h * 0.02),
                                  child: Container(
                                    height: h * 0.06,
                                    width: w * 0.4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: w * 0.05),
                                          child: Text("Night",
                                              style: GoogleFonts.rubik(
                                                fontSize: 13,
                                                color: Colors.black54,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: w * 0.05),
                                          child: Text("5 Night",
                                              style: GoogleFonts.rubik(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: h * 0.02),
                                  child: Container(
                                    height: h * 0.06,
                                    width: w * 0.5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: w * 0.05),
                                          child: Text("Room & Guest",
                                              style: GoogleFonts.rubik(
                                                fontSize: 13,
                                                color: Colors.black54,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: w * 0.05),
                                          child: Text("2 Room, 4 Guest",
                                              style: GoogleFonts.rubik(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.05, top: h * 0.02),
                              child: Text("Room & Guest",
                                  style: GoogleFonts.rubik(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: w * 0.05),
                              child: Text(
                                  "1 x Standard Room, 1 King sized bed, City view, Flexible Rate",
                                  style: GoogleFonts.rubik(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: w * 0.05),
                              child: Text(
                                  "1 x Superior Room, Twin beds, City view, Flexible Rate",
                                  style: GoogleFonts.rubik(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.01, top: h * 0.02),
                  child: Container(
                    height: h * 0.52,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.93),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: w * 0.05, top: h * 0.03),
                          child: Text("Summary of Charges",
                              style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: h * 0.022,
                              )),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Checkbox(
                              activeColor: Color(0xff173450),
                              checkColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            Expanded(
                              child: Text(
                                  "1 x Standard Room, 1 King sized bed, City view, Flexible Rate x \$250/night x 5 Night",
                                  maxLines: 4,
                                  style: GoogleFonts.rubik(
                                    color: Color(0xff57606F),
                                  )),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only( top: h * 0.02,left: w*0.78),
                          child: Text("\$1250",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: h * 0.02),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Color(0xff173450),
                              checkColor: Colors.white,
                              value: isChecked1,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked1 = value!;
                                });
                              },
                            ),
                            Text(
                                "1 x Superior Room, Twin beds, City view,\nFlexible Rate x \$350/night x 5 Night",
                                style: GoogleFonts.rubik(
                                  color: Color(0xff57606F),
                                )),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: w * 0.8, top: h * 0.02),
                          child: Text("\$1750",
                              style: GoogleFonts.rubik(
                                color: Colors.black,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: h * 0.02),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.05, top: h * 0.02),
                              child: Text("Sub Total",
                                  style: GoogleFonts.rubik(
                                    color: Colors.black87,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.59, top: h * 0.02),
                              child: Text("\$1250",
                                  style: GoogleFonts.rubik(
                                    color: Colors.black,
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: w * 0.05),
                              child: Text("VAT 10%",
                                  style: GoogleFonts.rubik(
                                    color: Colors.black87,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: w * 0.61),
                              child: Text("\$125",
                                  style: GoogleFonts.rubik(
                                    color: Colors.black,
                                  )),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: h * 0.02),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.05, top: h * 0.02),
                              child: Text("Total",
                                  style: GoogleFonts.rubik(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.61, top: h * 0.02),
                              child: Text("\$1375",
                                  style: GoogleFonts.rubik(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffF00034),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.01, top: h * 0.02),
                  child: Container(
                    height: h * 0.23,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.93),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: w * 0.05, top: h * 0.03),
                          child: Text("Discount Payment",
                              style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontSize: h * 0.02,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: h * 0.02),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.04, top: h * 0.01),
                              child: Icon(
                                Icons.star_border,
                                color: Color(0xff24537D),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("Redeem Your Point",
                                    style: GoogleFonts.rubik(
                                      color: Colors.black,
                                    )),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xff24537D),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: h * 0.02),
                          child: Divider(
                            endIndent: 20,
                            indent: 20,
                            thickness: 1,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.04, top: h * 0.01),
                              child: Icon(
                                Icons.local_offer_outlined,
                                color: Color(0xff24537D),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("Choose Promotion Code",
                                    style: GoogleFonts.rubik(
                                      color: Colors.black,
                                    )),
                              ),
                            ),
                            GestureDetector(  onTap: () {
                              // print("next svreen");
                              Next_Screen(context, Add_special_rate_code());
                            },
                              child: Icon(
                                Icons.arrow_forward,
                                color: Color(0xff24537D),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.01, top: h * 0.02),
                  child: Container(
                    height: h * 0.15,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.93),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.only(top: h * 0.04),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: w * 0.05, top: h * 0.01),
                                  child: RichText(
                                    text: TextSpan(
                                      text: "Total:",
                                      style: GoogleFonts.rubik(
                                        color: Color(0xff57606F),
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: " \$1375",
                                            style: GoogleFonts.rubik(
                                                fontSize: 17,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: w * 0.05, top: h * 0.01),
                                child: Text(
                                  "(Earn 33 Point)",
                                  style: GoogleFonts.rubik(
                                    color: Color(0xff2C2F3D),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: h * 0.04, left: w * 0.1),
                            child: Container(
                                height: h * 0.06,
                                width: w * 0.45,
                                child: button(
                                  text: Text("Confirm",
                                      style: GoogleFonts.rubik(
                                          color: Colors.white)),
                                  navi: Payment_method_1(),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
