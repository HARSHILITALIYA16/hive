import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Screen/phone%20number.dart';
import 'package:hive/Widget/Background.dart';
import '../widget/button.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  bool isChecked = false;
  bool seen = false;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff143048),
      ),
      body: bg(
        child: ListView(
          children: [
            Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05),
                        child: Text("Sign-in",
                            style: GoogleFonts.rubik(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.66,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white60,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.64,
                        width: MediaQuery.of(context).size.width * 0.85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.62,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value != null) {
                                  return null;
                                } else {
                                  return "Enter your vaild Username";
                                }
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(CupertinoIcons.person),
                                  border: InputBorder.none,
                                  label: Text(
                                    "Username",
                                    style: GoogleFonts.rubik(),
                                  ),
                                  hintText: "Email/Phone Number"),
                            ),
                            Divider(
                              height: 2,
                              indent: 20,
                              endIndent: 20,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value != null) {
                                  return null;
                                } else {
                                  return "Enter your vaild Password";
                                }
                              },
                              obscureText: !seen,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        seen = !seen;
                                      });
                                    },
                                    icon: seen
                                        ? Icon(CupertinoIcons.eye_fill)
                                        : Icon(CupertinoIcons.eye_slash_fill)),
                                prefixIcon: Icon(CupertinoIcons.lock),
                                border: InputBorder.none,
                                label: Text(
                                  "Password",
                                  style: GoogleFonts.rubik(),
                                ),
                              ),
                            ),
                            Divider(
                              height: 2,
                              indent: 20,
                              endIndent: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(
                                  checkColor: Colors.white,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Text("Remember me",
                                      style: GoogleFonts.rubik(
                                        fontSize: 15,
                                      )),
                                ),
                                // SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text("Forgot Password",
                                        style: GoogleFonts.rubik(
                                          decoration: TextDecoration.underline,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            button(
                                text: Text("Sign-in",
                                    style:
                                        GoogleFonts.rubik(color: Colors.white)),
                                navi: Phone_Number()),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.07,
                              width: MediaQuery.of(context).size.width * 0.1,
                              child: Image.asset("assets/face.png",
                                  fit: BoxFit.cover),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: GoogleFonts.rubik(
                                    fontSize: 15,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => Phone_Number(),
                                    ));
                                  },
                                  child: Text("Sign Up",
                                      style: GoogleFonts.rubik(
                                        decoration: TextDecoration.underline,
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      height: 1,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        Text("Or", style: GoogleFonts.rubik()),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 1,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: MediaQuery.of(context).size.height * 0.02,
                            // ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      child: Image.asset("assets/facebook.png"),
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      child: Image.asset("assets/google.png"),
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      child: Image.asset("assets/twitter.png"),
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      child: Image.asset("assets/Linkedin.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("or"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text("Continue Guest"),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
