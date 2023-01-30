import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Screen/complte%20information.dart';
import 'package:hive/Widget/Button.dart';
import 'package:hive/Widget/body_backgraound.dart';

class Scan_Result extends StatefulWidget {
  const Scan_Result({Key? key, this.photo,}) : super(key: key);
  final photo;

  @override
  State<Scan_Result> createState() => _Scan_ResultState();
}

class _Scan_ResultState extends State<Scan_Result> {
  TextEditingController _name = TextEditingController();
  TextEditingController _dob = TextEditingController();
  TextEditingController _id = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff143048),
        title: Text("Complete Profile", style: GoogleFonts.rubik(fontSize: 17)),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Body_Background(),
          Positioned(
              top: h * 0.15,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: h * 0.59,
                  width: w * 0.95,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Step 1/3",
                          style: GoogleFonts.rubik(
                              fontSize: 14, color: Colors.grey),
                        ),
                        Text(
                          "Scan ID/Passport Result",
                          style: GoogleFonts.rubik(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Color(0xff143048),
                          backgroundImage:widget.photo
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(CupertinoIcons.person,
                                color: Colors.black),
                            hintText: "Name",
                            label: Text("Name",
                                style: GoogleFonts.rubik(color: Colors.black)),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(CupertinoIcons.calendar,
                                color: Colors.black),
                            hintText: "DOB",
                            label: Text("DOB",
                                style: GoogleFonts.rubik(color: Colors.black)),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(CupertinoIcons.creditcard,
                                color: Colors.black),
                            hintText: "ID Number",
                            label: Text("ID Number",
                                style: GoogleFonts.rubik(color: Colors.black)),
                          ),
                        ),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height * 0.01,
                        // ),
                        button(
                            text: Text("Continue",
                                style: GoogleFonts.rubik(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400)),
                            navi: Complete_Information())
                      ],
                    ),
                  ),
                )),
              ))
        ],
      ),
    );
  }
}
