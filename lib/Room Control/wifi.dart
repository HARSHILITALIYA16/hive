import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Widget/volume.dart';

class Wifi extends StatefulWidget {
  const Wifi({Key? key}) : super(key: key);

  @override
  State<Wifi> createState() => _WifiState();
}

class _WifiState extends State<Wifi> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff2C2F3D),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Wifi",
            style: GoogleFonts.rubik(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90.0,vertical: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 0,),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Container(
                    height: h * 0.2,
                    width: w * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15),
                      child: Image.asset("assets/qr_code.jpg", fit: BoxFit.cover),
                    ),
                  )),
              Text(
                "Scan QR And use for Free",
                style: GoogleFonts.rubik(color: Colors.black38),
              )
            ]),
      ),
    );
  }
}
