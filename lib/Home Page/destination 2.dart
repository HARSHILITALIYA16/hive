import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Home%20Page/destiation%203.dart';
import 'package:hive/Widget/body_backgraound.dart';

import '../Widget/next_push.dart';
import '../widget/button.dart';

class Destination_2 extends StatefulWidget {
  const Destination_2({Key? key}) : super(key: key);

  @override
  State<Destination_2> createState() => _Destination_2State();
}

class _Destination_2State extends State<Destination_2> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Done", style: GoogleFonts.rubik(fontSize: 17)),
          ),
        ],
        title: Text("Where to?", style: GoogleFonts.rubik(fontSize: 17)),
        backgroundColor: Color(0xff143048),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Body_Background(),
          Positioned(
              top: h * 0.13,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                      child: Column(
                    children: [
                      Container(
                        height: h * 0.09,
                        width: w * 0.95,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffdcdfe2)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                  prefixIcon: Icon(CupertinoIcons.search),
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        Next_Screen(context, Destination_2());
                                      },
                                      icon: Icon(CupertinoIcons.arrow_right)),
                                  hintText: "Enter Place",
                                  fillColor: Colors.black,
                                  label: Text("Destination"))),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.017,
                      ),
                      Container(
                        height: h * 0.6,
                        width: w * 0.95,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfffefeff),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.location_on_outlined,
                                        color: Colors.red),
                                  ),
                                  Text("Find Hotel Near Me",
                                      style: GoogleFonts.rubik(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("State",
                                    style: GoogleFonts.rubik(
                                        color: Color(0xff143048),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.location_on_outlined,
                                        color: Colors.red),
                                  ),
                                  Text("Lake Placid, New York",
                                      style: GoogleFonts.rubik(fontSize: 15)),
                                ],
                              ),
                              Divider(
                                indent: 2,
                                color: Colors.grey,
                                endIndent: 2,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Popular",
                                    style: GoogleFonts.rubik(
                                        color: Color(0xff143048),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.location_on_outlined,
                                        color: Colors.red),
                                  ),
                                  Text("Lake Placid, New York",
                                      style: GoogleFonts.rubik(fontSize: 15)),
                                ],
                              ),Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.location_on_outlined,
                                        color: Colors.red),
                                  ),
                                  Text("Lake Placid, New York",
                                      style: GoogleFonts.rubik(fontSize: 15)),
                                ],
                              ),
                              Divider(
                                indent: 2,
                                color: Colors.grey,
                                endIndent: 2,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(CupertinoIcons.home,
                                        color: Colors.red,size: 19),
                                  ),
                                  Text("Lake Placid, Intercontinental",
                                      style: GoogleFonts.rubik(fontSize: 15)),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(CupertinoIcons.home,
                                        color: Colors.red,size: 19),
                                  ),
                                  Text("Lake Placid, Dreamy House",
                                      style: GoogleFonts.rubik(fontSize: 15)),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(CupertinoIcons.home,
                                        color: Colors.red,size: 19),
                                  ),
                                  Text("Lake Placid Balcony Resort",
                                      style: GoogleFonts.rubik(fontSize: 15)),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(CupertinoIcons.home,size: 19,
                                        color: Colors.red),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.017,
                      ),
                      button(
                          text: Text("Next",
                              style: GoogleFonts.rubik(
                                  color: Colors.white, fontSize: 16)),
                          navi: Destination_3())
                    ],
                  ))))
        ],
      ),
    );
  }
}
