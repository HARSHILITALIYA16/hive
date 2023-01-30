import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Room%20Control/unlocking.dart';
import 'package:lottie/lottie.dart';

class Locked extends StatefulWidget {
  const Locked({Key? key}) : super(key: key);

  @override
  State<Locked> createState() => _LockedState();
}

class _LockedState extends State<Locked> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Unlocking()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digital Key | Room 515",
            style: GoogleFonts.rubik(fontSize: 15)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff143048),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
            ),
            Lottie.asset("assets/locker-locked.json"),
            Text(
              "Locked",
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
