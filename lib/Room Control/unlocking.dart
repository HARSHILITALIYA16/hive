import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Room%20Control/unlocked.dart';
import 'package:lottie/lottie.dart';

class Unlocking extends StatefulWidget {
  const Unlocking({Key? key}) : super(key: key);

  @override
  State<Unlocking> createState() => _UnlockingState();
}

class _UnlockingState extends State<Unlocking> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Unlocked()
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
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Container(height: MediaQuery.of(context).size.height*0.4,
                child: Lottie.asset("assets/unlocking.json")),
            Text(
              "Unlocking",
              style: GoogleFonts.rubik(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: 1),
            ),Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Hold the phone to the lock to open door",
                style: GoogleFonts.rubik(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
