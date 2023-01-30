import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Screen/payment%20method.dart';
import 'package:hive/Screen/scan%20result.dart';
import '../Widget/Button.dart';
import '../Widget/body_backgraound.dart';

class Complete_Information extends StatefulWidget {
  const Complete_Information({Key? key}) : super(key: key);

  @override
  State<Complete_Information> createState() => _Complete_InformationState();
}

class _Complete_InformationState extends State<Complete_Information> {
  bool _hidden = false;
  bool _ishidden = false;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff143048),
        title: Text("Complete Profile", style: GoogleFonts.rubik(fontSize: 17)),
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
                height: h * 0.65,
                width: w * 0.95,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Step 2/3",
                        style:
                            GoogleFonts.rubik(fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        "Complete Information",
                        style: GoogleFonts.rubik(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(CupertinoIcons.mail, color: Colors.black),
                          hintText: "Enter Your Email Address",
                          label: Text("Email",
                              style: GoogleFonts.rubik(color: Colors.black)),
                        ),
                      ),
                      TextFormField(
                        obscureText: _ishidden,
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(CupertinoIcons.lock, color: Colors.black),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {});
                                _ishidden = !_ishidden;
                              },
                              icon: _hidden
                                  ? Icon(Icons.visibility_off_outlined)
                                  : Icon(Icons.visibility_outlined)),
                          hintText: "Password",
                          label: Text("Password",
                              style: GoogleFonts.rubik(color: Colors.black)),
                        ),
                      ),
                      TextFormField(
                        obscureText: _hidden,
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(CupertinoIcons.lock, color: Colors.black),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {});
                                _hidden = !_hidden;
                              },
                              icon: _hidden
                                  ? Icon(Icons.visibility_off_outlined)
                                  : Icon(Icons.visibility_outlined)),
                          hintText: "Password",
                          label: Text("Password",
                              style: GoogleFonts.rubik(color: Colors.black)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(CupertinoIcons.check_mark,
                              color: Colors.green, size: 15),
                          Expanded(
                            child: Text(
                              "At least 8 character",
                              style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(CupertinoIcons.check_mark,
                              color: Colors.black, size: 15),
                          Expanded(
                            child: Text(
                              "Uppercase (A-Z) & Lowercase (a-z)",
                              style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(CupertinoIcons.check_mark,
                              color: Colors.black, size: 15),
                          Expanded(
                            child: Text(
                              "Digits (0-9) or Special Character (\$, %, @…)",
                              style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        indent: 2,
                        color: Colors.grey,
                        endIndent: 2,
                      ),
                      Text(
                        "By tapping Continue below, you agree to our Term & Condition",
                        style: GoogleFonts.rubik(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      button(
                          text: Text("Continue",
                              style: GoogleFonts.rubik(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                          navi: Payment_Method())
                    ],
                  ),
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
