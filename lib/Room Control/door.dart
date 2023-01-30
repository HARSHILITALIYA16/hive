import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Door extends StatefulWidget {
  const Door({Key? key}) : super(key: key);

  @override
  State<Door> createState() => _DoorState();
}

class _DoorState extends State<Door> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff2C2F3D),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Door",
            style: GoogleFonts.rubik(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "CLOSE",
              style: GoogleFonts.rubik(
                  color: Colors.white,
                  fontSize: 33,
                  fontWeight: FontWeight.w400),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    height: h * 0.12,
                    width: w * 0.24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfff8224a),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text(
                          "Lock",
                          style: GoogleFonts.rubik(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Container(
                      height: h * 0.12,
                      width: w * 0.24,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          shape: BoxShape.circle,
                          color: Colors.transparent),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.lock_open,
                            color: Colors.white,
                            size: 40,
                          ),
                          Text(
                            "Unlock",
                            style: GoogleFonts.rubik(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(textAlign: TextAlign.center,
                "Please Bring your smartphone close to the door and press the button or uplock",
                style: GoogleFonts.rubik(
                  color: Colors.grey,
                ),
              ),
            )
          ]),
    );
  }
}
