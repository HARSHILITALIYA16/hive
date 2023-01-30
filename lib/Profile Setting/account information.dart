import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Widget/body_backgraound.dart';

class Account_Information extends StatefulWidget {
  const Account_Information({Key? key}) : super(key: key);

  @override
  State<Account_Information> createState() => _Account_InformationState();
}

class _Account_InformationState extends State<Account_Information> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff143048),
        title: Text(
          "Account Information",
          style: GoogleFonts.rubik(color: Colors.white, fontSize: 15),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Body_Background(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    height: h * 0.25,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffdcdfe2).withOpacity(0.98)),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              "Persional Info",
                              style: GoogleFonts.rubik(
                                  color: Colors.grey, fontSize: 15),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Adress :",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: w * 0.19,
                              ),
                              Text(
                                "909 Sycamore Ave.\n Adrian, MI 49221",
                                style: GoogleFonts.rubik(
                                    color: Colors.black87,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                CupertinoIcons.arrow_right,
                                size: 18,
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Mobile : ",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: w * 0.195,
                              ),
                              Text(
                                "+1  48261614",
                                style: GoogleFonts.rubik(
                                    color: Colors.black87,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                CupertinoIcons.arrow_right,
                                size: 18,
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Email : ",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: w * 0.1,
                              ),
                              Text(
                                "johan09@gmail.com",
                                style: GoogleFonts.rubik(
                                    color: Colors.black87,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                CupertinoIcons.arrow_right,
                                size: 18,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    height: h * 0.11,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.98)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Password", style: GoogleFonts.rubik()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Change Password",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                CupertinoIcons.arrow_right,
                                size: 17,
                              )
                            ],
                          )
                        ],
                      ),
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
