import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Widget/date%20time.dart';


class Service_GYM extends StatefulWidget {
  const Service_GYM({Key? key}) : super(key: key);

  @override
  State<Service_GYM> createState() => _Service_GYMState();
}

class _Service_GYMState extends State<Service_GYM> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff2C2F3D),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Additional Services",
            style: GoogleFonts.rubik(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 30,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.sports_gymnastics,
                    color: Colors.white,
                    size: 35,
                  ),
                  Text(
                    "GYM",
                    style: GoogleFonts.rubik(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
        Stack(
          children: [
            Container(
              height: h * 0.43,
              width: w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "http://yesofcorsa.com/wp-content/uploads/2017/05/Gym-Wallpaper-HD.jpg"),
                      fit: BoxFit.cover),
                  gradient: LinearGradient(colors: [
                    Colors.red,
                    Color(0xff0A0D1859).withOpacity(0.5),
                    Color(0xff2C2F3D)
                  ])),
            ),
            Container(
              height: h * 0.43,
              width: w,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.transparent,
                Color(0xff2c2f3d).withOpacity(0.8),
                Color(0xff2c2f3d)
              ], end: Alignment.bottomLeft, begin: Alignment.topLeft)),
              child: Padding(
                padding: EdgeInsets.only(top: h * 0.35),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Book an appointment time at the GYM",
                        style: GoogleFonts.rubik(color: Colors.white),
                      )
                    ]),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
          child: Container(height: 40,
              child: Date_Time()),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: h * 0.12,
                  width: w * 0.24,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(color: Colors.blueGrey, width: 2)),
                  child: Icon(
                    Icons.menu_book_sharp,
                    color: Colors.white,
                    size: 37,
                  ),
                ),
                Text(
                  "Book",
                  style: GoogleFonts.rubik(color: Colors.white, fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
