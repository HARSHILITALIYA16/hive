import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Home%20Page/room%20options.dart';
import 'package:hive/Widget/body_backgraound.dart';

class Room_Listing extends StatefulWidget {
  const Room_Listing({Key? key}) : super(key: key);

  @override
  State<Room_Listing> createState() => _Room_ListingState();
}

class _Room_ListingState extends State<Room_Listing> {
  final _price = ["From 250 USD", "From 350 USD", "From 850 USD"];
  final _size = ["Size:25m2", "Size:25m2", "Size:20m2"];
  final im = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq-0H0XvgydulrbUR_yyJvrLfaECvKFa8-Yo8u3oeI&s",
    "https://media.istockphoto.com/id/180451126/photo/hotel-standard-room.jpg?s=612x612&w=0&k=20&c=iu4nL4_zUf7AI6iL74zvpqHFg-0AFR3bdTP68WJf5_g=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnWbuFHD1v42tR_f1r3CV-jDcy7w4BvuZToKkfJGBH&s"
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor: Color(0xffdce0ff),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Select Your Room",
          style: GoogleFonts.rubik(fontSize: 16),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Body_Background(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                Container(
                  height: 63,
                  width: w * 0.95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text("Arrival Date",
                                style: GoogleFonts.rubik(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                            Text("10,Nov",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Deparure Date",
                                style: GoogleFonts.rubik(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                            Text("16,Nov",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Gest",
                                style: GoogleFonts.rubik(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                            Text("4",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Room",
                                style: GoogleFonts.rubik(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                            Text("2",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: GestureDetector(  onTap: () {
                          index==0?Navigator.of(context).push(MaterialPageRoute(builder: (context) => Room_Option(),)):null;
                        },
                          child: Stack(
                            children: [
                              Container(
                                height: 170,
                                width: w * 0.95,
                                // color: Colors.amberAccent,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage("${im[index]}"),
                                        fit: BoxFit.cover)),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 100,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Standard Room",
                                      style: GoogleFonts.rubik(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        CupertinoIcons.person,
                                        color: Colors.red,
                                        size: 17,
                                      ),
                                      Text(
                                        "Max:3",
                                        style: GoogleFonts.rubik(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: w * 0.04,
                                      ),
                                      Icon(
                                        CupertinoIcons.rectangle_expand_vertical,
                                        color: Colors.red,
                                        size: 17,
                                      ),
                                      Text(
                                        _size[index],
                                        style: GoogleFonts.rubik(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: w * 0.04,
                                      ),
                                      Text(
                                        _price[index],
                                        style: GoogleFonts.rubik(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: Colors.white),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Room 1:",
                              style: GoogleFonts.rubik(color: Colors.grey)),
                          Text("Suprior Room",
                              style: GoogleFonts.rubik(color: Colors.black)),
                          SizedBox(width: w*0.3,),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("Select:",
                                  style: GoogleFonts.rubik(color: Colors.grey)),
                              Text("Room 1",
                                  style:
                                      GoogleFonts.rubik(color: Colors.black)),
                            ],
                          ),
                          Icon(CupertinoIcons.arrow_right_square),
                          Column(
                            children: [
                              Text("Select:",
                                  style: GoogleFonts.rubik(color: Colors.grey)),
                              Text("Room 2",
                                  style:
                                      GoogleFonts.rubik(color: Colors.black)),
                            ],
                          ),
                          Icon(CupertinoIcons.arrow_right_square),
                          Text("Finish",
                              style: GoogleFonts.rubik(color: Colors.black)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
