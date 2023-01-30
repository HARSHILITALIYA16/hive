import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Room%20Control/unable%20unlock.dart';
import 'package:lottie/lottie.dart';

class Unlocked extends StatefulWidget {
  const Unlocked({Key? key}) : super(key: key);

  @override
  State<Unlocked> createState() => _UnlockedState();
}

class _UnlockedState extends State<Unlocked> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Unable_Unlock()
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
        color: Color(0xff14ba8a),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Lottie.asset("assets/unlock.json")),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Text(
              "Unlocked",
              style: GoogleFonts.rubik(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: 1),
            ),
            Padding(
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
