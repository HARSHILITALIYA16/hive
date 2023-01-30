import 'package:flutter/material.dart';
import 'package:hive/Home%20Page/dashbord.dart';
import 'package:hive/Screen/scan%20id-password.dart';
import 'package:hive/Screen/sign%20in.dart';
import 'package:hive/Widget/Background.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Widget/Button.dart';
import 'package:hive/Widget/next_push.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: bg(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: h * 0.3),
                child: Center(
                    child: Container(
                  height: h * 0.62,
                  width: w * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: h * 0.1,
                          width: w * 0.8,
                          child: Image.asset(
                            "assets/Hive_Logos.png",
                            fit: BoxFit.cover,
                          )),
                      Text(
                        "One Hive \nInfinite Experincess",
                        style: GoogleFonts.rubik(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "HIVE ™ Member Rates. Our lowest rates. All the time",
                        style: GoogleFonts.rubik(
                            fontSize: 11, color: Colors.white),
                      ),
                      SizedBox(
                        height: h * 0.05,
                      ),
                      button(
                        navi: Sign_in(),
                        text: Text("Create Account",
                            style: GoogleFonts.rubik(
                                fontSize: 17, color: Colors.white)),
                      ),
                      Divider(
                        indent: 2,
                        color: Colors.white,
                        endIndent: 2,
                      ),
                      Row(
                        children: [
                          Text("Already have account?",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14)),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (c) => Sign_in()));
                              },
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline),
                              )),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                      Divider(
                        indent: 2,
                        color: Colors.white,
                        endIndent: 2,
                      ),
                      GestureDetector(
                        onTap: (){
                          Next_Screen(context, Dash_Borad());
                        },
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: "or ",
                                    style: TextStyle(color: Colors.grey)),
                                TextSpan(
                                    text: "Continue as Gues",
                                    style: TextStyle(color: Colors.white)),
                              ])),
                              Expanded(
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.05,
                      ),
                    ],
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
