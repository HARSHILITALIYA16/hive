import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Home%20Page/destination%201.dart';
import 'package:hive/Home%20Page/exploerlocation.dart';
import 'package:hive/Widget/next_push.dart';
import 'package:hive/widget/favourite.dart';

import '../Widget/body_backgraound.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List _image = [
    "https://www.roadaffair.com/wp-content/uploads/2019/01/lake-bled-slovenia-shutterstock_768078295.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7T4w3dXcyxILyIxAkI5Wg2JFJRQ6FOYKmHA&usqp=CAU",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Metropolitan_Museum_of_Art_%28The_Met%29_-_Central_Park%2C_NYC.jpg/240px-Metropolitan_Museum_of_Art_%28The_Met%29_-_Central_Park%2C_NYC.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYgpBqWqmKx5QrDmAO68f05gCTRF5oqNTRvQ&usqp=CAU"
  ];

  List _Hotelimage = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT98qTrG7yMHvnV9bMn6ACD7NlGWQrPnlzeDA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi0K6fMcR0Qfx7Hz6rMR9lv6AxTwen9zgvtw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxk3I2hXibOCEHC8mhAgySa22jmZkepYFVog&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdU45X3o-5G8Hk0-I5coH2VpOAuDFL6GeoLw&usqp=CAU"
  ];

  List _Text = [
    "Lake Placid",
    "Saratoga Springs",
    "Metropolition",
    "Sabarmati"
  ];

  List _HotelText = ["Windham", "TGB", "Taj Mahel", "Dhaba"];

  List _FavouriteText = [
    "Private sandy beach.",
    "Private chef & butler service.",
    "24 Hour Bar",
    "Other Facility"
  ];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff143048),
      ),
      body: Stack(
        children: [
          Body_Background(),
          ListView(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 0,
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.05),
                          child: CircleAvatar(
                            radius: 25,
                            child: Image.asset("assets/Avatar.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.05,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: h * 0.04,
                              width: w * 0.25,
                              child: Image.asset("assets/Hive_Logos.png"),
                            ),
                            Text("Johan Doe",
                                style: GoogleFonts.rubik(color: Colors.white)),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   width: w * 0.35,
                      // ),
                      Expanded(
                        flex: 1,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(
                            CupertinoIcons.bell_solid,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Container(
                    height: h * 0.05,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.search),
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                          hintText: "search"),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: w * 0.05,
                      ),
                      Icon(Icons.language_outlined,
                          size: 25, color: Colors.white),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      Text("Popular Destination",
                          style: GoogleFonts.rubik(
                              color: Colors.white, fontSize: 18)),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Container(
                    height: h * 0.15,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              index == 0
                                  ? Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Exploer_Location()))
                                  : null;
                            },
                            child: Container(
                              width: w * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(_image[index]),
                                      fit: BoxFit.cover)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(_Text[index],
                                          style: GoogleFonts.rubik(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 12)),
                                    )),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.local_offer_outlined,
                                    size: 25, color: Colors.black),
                                Expanded(
                                  child: Text("Special Offer",
                                      style: GoogleFonts.rubik(
                                          color: Colors.black, fontSize: 18)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("See All",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black, fontSize: 18)),
                              Icon(CupertinoIcons.arrow_right,
                                  size: 25, color: Colors.black),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.23,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            // clipBehavior: Clip.antiAlias,
                            children: [
                              Container(
                                clipBehavior: Clip.antiAlias,
                                height: h * 0.25,
                                width: w * 0.65,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: NetworkImage(_Hotelimage[index]),
                                      fit: BoxFit.cover,
                                    )),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: h * 0.15, left: w * 0.04),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Hotel in",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white)),
                                          Text(_HotelText[index],
                                              style: GoogleFonts.rubik(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 20)),
                                        ],
                                      ),
                                      Container(
                                        height: 35,
                                        width: 85,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              Color(0xffe1a915),
                                              Color(0xffab7a24)
                                            ], begin: Alignment.bottomCenter),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        // color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "Book Now",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -10,
                                top: -10,
                                child: Container(
                                  height: h * 0.1,
                                  width: w * 0.23,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(100),
                                        bottomLeft: Radius.circular(100),
                                        topRight: Radius.circular(100),
                                      )),
                                  child: Center(
                                      child: Text(
                                    "Up to -25%",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: h * 0.06,
                        width: w * 0.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(child: favourite()),
                            Expanded(
                              flex: 0,
                              child: Text("Falcilities & Services",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black, fontSize: 18)),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: Container(
                          // height: h * 0.05,
                          // width: w * 0.25,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("See All",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black, fontSize: 18)),
                              Icon(CupertinoIcons.arrow_right,
                                  size: 25, color: Colors.black),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: h * 0.22,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: w * 0.35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(_image[index]),
                                    fit: BoxFit.cover)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 8.0, right: 8, top: 45, bottom: 5),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(_FavouriteText[index],
                                        style: GoogleFonts.rubik(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 15)),
                                  ),
                                  Row(
                                    children: [
                                      Text("Discover",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: w * 0.03),
                                        child: Icon(Icons.arrow_forward,
                                            color: Colors.amber),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.03),
                        child: Icon(Icons.electric_bolt),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.02),
                        child: Text(
                          "Falcilities & Services",
                          style: GoogleFonts.rubik(
                              color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.02, bottom: h * 0.02),
                    child: Container(
                      height: h * 0.22,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://static.toiimg.com/thumb/48538866/The-most-stunning-beaches-in-Kerala.jpg?width=1200&height=900"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              fixedSize: Size(w * 0.42, h * 0.06)),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.arrow_forward, color: Colors.black),
                              Text("Explore Now",
                                  style:
                                      GoogleFonts.rubik(color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
