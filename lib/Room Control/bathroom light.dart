import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bathroom_light extends StatefulWidget {
  const Bathroom_light({Key? key}) : super(key: key);

  @override
  State<Bathroom_light> createState() => _Bathroom_lightState();
}

class _Bathroom_lightState extends State<Bathroom_light> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2C2F3D),
        elevation: 0,
        title: Center(child: Text("Bathroom")),
      ),
      backgroundColor: Color(0xff2C2F3D),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: w * 0.08),
            child: Text(
              "Lighting",
              style: GoogleFonts.rubik(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.4, vertical: h * 0.038),
            child: Container(

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff10ba89),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: CircleAvatar(radius: 40,backgroundColor: Color(0xff10ba89),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lightbulb_outline_rounded, color: Colors.white),
                    Text(
                      "Main Light",
                      style: GoogleFonts.rubik(color: Colors.white,fontSize: MediaQuery.of(context).size.width*0.035),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.4, vertical: h * 0.028),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xfffa2a50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: CircleAvatar(radius: 40,backgroundColor: Color(0xfffa2a50),
                child: Center(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.power_settings_new, color: Colors.white),
                      Text(
                        "Turn off",
                        style: GoogleFonts.rubik(color: Colors.white,fontSize: MediaQuery.of(context).size.width*0.042),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.4, vertical: h * 0.03),
            child: Container(
              height: h * 0.25,
              width: w * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff242634),
              ),
              child: Padding(
                padding: EdgeInsets.all(8),
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
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.4, vertical: h * 0.03),
            child: Container(
              height: h * 0.1,
              width: w * 0.18,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff242634),
              ),
              child: Center(
                  child: Text("Intensity",
                      style: GoogleFonts.rubik(
                          color: Colors.white, fontSize: 12))),
            ),
          ),
        ],
      ),
    );
  }
}
