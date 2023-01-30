import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bathroom_floor_heting extends StatefulWidget {
  const Bathroom_floor_heting({Key? key}) : super(key: key);

  @override
  State<Bathroom_floor_heting> createState() => _Bathroom_floor_hetingState();
}

class _Bathroom_floor_hetingState extends State<Bathroom_floor_heting> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff2C2F3D),
      appBar: AppBar(
        elevation: 0,
        title: Text("Bathroom", style: GoogleFonts.rubik(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xff2C2F3D),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: w * 0.08),
            child: Text(
              "Floor Heating",
              style: GoogleFonts.rubik(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: h * .04),
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
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.speed, color: Colors.white,size: 30),
                      Text(
                        "1 min",
                        style: GoogleFonts.rubik(color: Colors.white,fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: h * 0.15,
                  width: w * 0.25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff435F79),
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.speed, color: Colors.white,size: 30),
                      Text(
                        "2 min",
                        style: GoogleFonts.rubik(color: Colors.white,fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: h * 0.15,
                  width: w * 0.25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff435F79),
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.speed, color: Colors.white,size: 30),
                      Text(
                        "3 min",
                        style: GoogleFonts.rubik(color: Colors.white,fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: w * 0.4, vertical: h * 0.25),
            child: Container(

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xfffa2a50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: CircleAvatar(radius: 40,backgroundColor: Color(0xfffa2a50),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.power_settings_new, color: Colors.white),
                    Text(
                      "Turn off",
                      style: GoogleFonts.rubik(color: Colors.white,fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
