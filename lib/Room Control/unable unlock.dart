import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Room%20Control/room%20control.dart';
import 'package:lottie/lottie.dart';

class Unable_Unlock extends StatefulWidget {
  const Unable_Unlock({Key? key}) : super(key: key);

  @override
  State<Unable_Unlock> createState() => _Unable_UnlockState();
}

class _Unable_UnlockState extends State<Unable_Unlock> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Room_Control()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Digital Key | Room 515",
            style: GoogleFonts.rubik(fontSize: 15)),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff292c39),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Lottie.asset("assets/keys.json")),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Text(
              "Unable to Unlock",
              style: GoogleFonts.rubik(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
              child: Text(
                "Please try again. If you nees assistant please  ",
                style: GoogleFonts.rubik(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    letterSpacing: 1),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "call the Font-Desk",
                  style: GoogleFonts.rubik(
                      color: Colors.green,
                      decoration: TextDecoration.underline),
                ))
          ],
        ),
      ),
    );
  }
}
