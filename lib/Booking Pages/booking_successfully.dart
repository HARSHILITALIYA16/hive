import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Home%20Page/dashbord.dart';
import 'package:hive/My%20Stay/my%20stay.dart';
import 'package:hive/widget/button.dart';

import 'package:lottie/lottie.dart';

import '../Home Page/home_page.dart';
import '../Widget/body_backgraound.dart';

class Booking_successfully extends StatefulWidget {
  const Booking_successfully({Key? key}) : super(key: key);

  @override
  State<Booking_successfully> createState() => _Booking_successfullyState();
}

class _Booking_successfullyState extends State<Booking_successfully> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Dash_Borad(),
              ));
            },
            child: Icon(CupertinoIcons.home)),
        centerTitle: true,
        title: Text(
          "Booking Successfullly",
          style: GoogleFonts.rubik(color: Colors.white),
        ),
        backgroundColor: Color(0xff143048),
      ),
      body: Stack(
        children: [
          Body_Background(),
          Center(
            child: Container(
              width: w * 0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffdcdfe3),
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: h * 0.38, child: Lottie.asset("assets/done.json")),
                  Text("Thank You For Your Payment",
                      style: GoogleFonts.rubik(
                          fontWeight: FontWeight.bold, fontSize: 18)),

                   Container(
                      width: w * 0.8,height: h*0.1,
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Reservation mode in the name of:",
                            style: GoogleFonts.rubik(
                                color: Colors.grey, fontSize: 12)),
                        subtitle: Text("Johan Doe",
                            style: GoogleFonts.rubik(
                                color: Colors.black, fontSize: 14)),
                      ),
                    ),

                  Container(height: h*0.1,
                    width: w * 0.8,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Booking information has been send to:",
                          style: GoogleFonts.rubik(
                              color: Colors.grey, fontSize: 12)),
                      subtitle: Text("johan09@gmail.com",
                          style: GoogleFonts.rubik(
                              color: Colors.black, fontSize: 14)),
                    ),
                  ),
                  button(
                      text: Text(
                        "My Reservation",
                        style: GoogleFonts.rubik(),
                      ),
                      navi: My_Stay()),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.01),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                              colors: [Color(0xff10BA89), Color(0xff098A64)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            "Invoice",
                            style: GoogleFonts.rubik(),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
