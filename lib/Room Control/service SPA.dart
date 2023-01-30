import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Widget/date%20time.dart';

class Service_SPA extends StatefulWidget {
  const Service_SPA({Key? key}) : super(key: key);

  @override
  State<Service_SPA> createState() => _Service_SPAState();
}

class _Service_SPAState extends State<Service_SPA> {
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
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 50,
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
                      style:
                          GoogleFonts.rubik(color: Colors.white, fontSize: 16),
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
                            "https://www.divinebeautywimbledon.co.uk/wp-content/uploads/2020/06/massage-1024x683.jpg"),
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
                  padding: EdgeInsets.only(top: h * 0.28),
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
                            Image.asset("assets/Vector.png", height: 30),
                            Text(
                              "MASKS",
                              style: GoogleFonts.rubik(
                                  color: Colors.white, fontSize: 14),
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
                            Image.asset("assets/sauna.png",
                                height: 40, color: Colors.white),
                            Text(
                              "SAUNA",
                              style: GoogleFonts.rubik(
                                  color: Colors.white, fontSize: 14),
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
                            Image.asset(
                              "assets/massage.png",
                              color: Colors.white,
                            ),
                            Text(
                              "Massage",
                              style: GoogleFonts.rubik(
                                  color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: w * 0.05, ),
                  child: Row(
                    children: [
                      Text(
                        "Choose the type of service",
                        style: GoogleFonts.rubik(
                            color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      SizedBox(width:w*0.5,
                        child: Text(
                          "Hydrating bio cellulose mask - 15\$ (20 min)",
                          style: GoogleFonts.rubik(
                              color: Colors.white, fontSize: 14),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_down_outlined,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  endIndent: 20,
                  indent: 20,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.05, top: h * 0.01),
                  child: Row(
                    children: [
                      Text(
                        "Book an appointment thime at the spa",
                        style: GoogleFonts.rubik(
                            color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: Date_Time(),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: h * 0.1,
                          width: w * 0.2,
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
                              ]),
                          child: Icon(
                            Icons.menu_book_sharp,
                            color: Colors.white,
                            size: 37,
                          ),
                        ),
                        Text(
                          "Book",
                          style: GoogleFonts.rubik(
                              color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
