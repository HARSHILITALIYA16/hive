import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Widget/volume.dart';

class Light extends StatefulWidget {
  const Light({Key? key}) : super(key: key);

  @override
  State<Light> createState() => _LightState();
}

class _LightState extends State<Light> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff2C2F3D),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lighting",
            style: GoogleFonts.rubik(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: h * 0.15,
                    width: w * 0.25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff10ba89),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.lightbulb,
                              color: Colors.white, size: 28),
                        ),
                        Text(
                          "Main Light",
                          style: GoogleFonts.rubik(
                              color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.15,
                    width: w * 0.25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.lightbulb_circle_outlined,
                              color: Colors.white, size: 28),
                        ),
                        Text(
                          "Table Light",
                          style: GoogleFonts.rubik(
                              color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.15,
                    width: w * 0.25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.light_mode_outlined,
                              color: Colors.white, size: 28),
                        ),
                        Text(
                          "Wall Light",
                          style: GoogleFonts.rubik(
                              color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.1,
              width: w * 0.2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffF71F48),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.power_settings_new,
                    color: Colors.white,
                    size: 26,
                  ),
                  Text(
                    "Turn off",
                    style: GoogleFonts.rubik(color: Colors.white, fontSize: 14),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
              child: Container(
                height: h * 0.25,
                width: w * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff242634),
                ),
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: Padding(
                    padding: EdgeInsets.only(top: h * 0.05),
                    child: Container(
                      height: h * 0.25,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 10),
                          )
                        ],
                        color: Color(0xff10ba89),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(top: h * 0.09),
                          child: Center(
                              child: Text(
                            "70 %",
                            style: GoogleFonts.rubik(color: Colors.white),
                          ))),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff242634),
                      ),
                      child: Center(
                          child: Text(
                        "Intensity",
                        style: GoogleFonts.rubik(
                            color: Colors.white, fontSize: 13),
                      ))),
                ],
              ),
            ),
            SizedBox(height: 10,),
          ]),
    );
  }
}
