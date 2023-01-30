import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Home%20Page/dashbord.dart';
import 'package:hive/Home%20Page/home_page.dart';
import 'package:lottie/lottie.dart';

import '../Widget/body_backgraound.dart';

class Finish extends StatefulWidget {
  const Finish({Key? key}) : super(key: key);

  @override
  State<Finish> createState() => _FinishState();
}

class _FinishState extends State<Finish> {
  late int seconds;
  Timer? timer;

  @override
  void initState() {
    super.initState();

    // timer=Timer.periodic(Duration(seconds: 3,),(_){
    //   Navigator.pushReplacement(context,
    //         MaterialPageRoute(builder:
    //             (context) =>
    //             Dash_Borad()
    //         )
    //   );

    //   setState(() {
    //     print(timer);

    //   });
    //    seconds--;
    // });
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Dash_Borad())),
    );
  }

  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff143048),
        title: Text("Finish", style: GoogleFonts.rubik(fontSize: 17)),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Body_Background(),
          Positioned(
              top: h * 0.15,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: h * 0.5,
                  width: w * 0.95,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Lottie.asset("assets/done.json",
                            fit: BoxFit.cover, height: 230, width: 230),
                        Text(
                          "Register Successful!",
                          style: GoogleFonts.rubik(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: "You will be redirected to the ",
                                style: GoogleFonts.rubik(
                                    color: Colors.black54, fontSize: 17)),
                            TextSpan(
                                text: "Home Screen ",
                                style: GoogleFonts.rubik(
                                    fontSize: 17,
                                    color: Color(0xff143048),
                                    fontWeight: FontWeight.w600)),
                            TextSpan(
                                text: "in",
                                style: GoogleFonts.rubik(
                                    color: Colors.black54, fontSize: 17)),
                            TextSpan(
                                text: "03",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17)),
                            TextSpan(
                                text: "Second",
                                style: GoogleFonts.rubik(
                                    color: Colors.black54, fontSize: 17)),
                          ]),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                )),
              ))
        ],
      ),
    );
  }
}
