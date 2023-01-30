import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Profile%20Setting/account%20information.dart';
import 'package:hive/Screen/welcome.dart';
import '../Widget/body_backgraound.dart';
import '../Widget/next_push.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _onoff = false;
  bool _isonoff = false;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Setting",
          style: GoogleFonts.rubik(fontSize: 15),
        ),
        backgroundColor: Color(0xff143048),
        elevation: 0,
      ),
      extendBodyBehindAppBar: false,
      body: Stack(
        children: [
          Body_Background(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(

                    width: w * 0.95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffdcdfe2).withOpacity(0.98)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Account",
                          style: GoogleFonts.rubik(
                              fontSize: 14, color: Colors.black87),
                        ),
                        ListTile(
                          title: Text("Account Information",
                              style: GoogleFonts.rubik(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                          trailing: GestureDetector(
                            onTap: () {
                              // print("next svreen");
                              Next_Screen(context, Account_Information());
                            },
                            child: Icon(Icons.arrow_forward,
                                color: Colors.black87, size: 18),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Manage Payment Method",
                              style: GoogleFonts.rubik(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                          trailing: Icon(Icons.arrow_forward,
                              color: Colors.black87, size: 18),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Comunication Preferences",
                              style: GoogleFonts.rubik(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                          trailing: Icon(Icons.arrow_forward,
                              color: Colors.black87, size: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Container(

                    width: w * 0.95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfffefeff)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Push Notification",
                              style: GoogleFonts.rubik(
                                  fontSize: 14, color: Colors.black87),
                            ),
                            ListTile(
                              title: Text(
                                  "Allow notifications in your phone’s setting",
                                  style: GoogleFonts.rubik(
                                      wordSpacing: -0.3,
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                              trailing: Icon(Icons.arrow_forward,
                                  color: Colors.black87, size: 18),
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Stay Notification",
                                    style: GoogleFonts.rubik(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                CupertinoSwitch(
                                    activeColor: Colors.grey[200],
                                    thumbColor: !_onoff
                                        ? Color(0xff57606f)
                                        : Color(0xff1dcca3),
                                    value: _onoff,
                                    onChanged: (bool val) {
                                      setState(() {
                                        _onoff = val;
                                      });
                                    })
                              ],
                            ),
                            Text(
                                "Get room ready, upgrade,\n check-in/check-out and other reservation info.",
                                style: GoogleFonts.rubik(
                                    color: Colors.black54,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400)),
                            SizedBox(
                              height: 20,
                            ),
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: h * 0.12,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfffefeff)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Device Preferences",
                              style: GoogleFonts.rubik(color: Colors.grey)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Enable Face ID",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              CupertinoSwitch(
                                  activeColor: Colors.grey[200],
                                  thumbColor: !_isonoff
                                      ? Color(0xff57606f)
                                      : Color(0xff1dcca3),
                                  value: _isonoff,
                                  onChanged: (bool val) {
                                    setState(() {
                                      _isonoff = val;
                                    });
                                  })
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: h * 0.33,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfffefeff)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Support & Information",
                            style: GoogleFonts.rubik(color: Colors.black45),
                          ),
                          Container(
                            height: 33,
                            child: ListTile(
                              title: Text(
                                "Term & Conditions",
                                style: GoogleFonts.rubik(color: Colors.black),
                              ),
                              trailing: Icon(
                                CupertinoIcons.arrow_right,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Divider(),
                          Container(
                            height: 33,
                            child: ListTile(
                              title: Text(
                                "Data Privacy Center",
                                style: GoogleFonts.rubik(color: Colors.black),
                              ),
                              trailing: Icon(
                                CupertinoIcons.arrow_right,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Divider(),
                          Container(
                            height: 33,
                            child: ListTile(
                              title: Text(
                                "Contact Us",
                                style: GoogleFonts.rubik(color: Colors.black),
                              ),
                              trailing: Icon(
                                CupertinoIcons.arrow_right,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Divider(),
                          Container(
                            height: 33,
                            child: ListTile(
                              title: Text(
                                "About This App",
                                style: GoogleFonts.rubik(color: Colors.black),
                              ),
                              trailing: Icon(
                                CupertinoIcons.arrow_right,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: h * 0.13,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfffefeff)),
                    child: Padding(
                      padding: const EdgeInsets.all(27.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xfff61a44)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(width: 35),
                              Text(
                                "Log Out",
                                style: GoogleFonts.rubik(color: Colors.white),
                              ),
                              Icon(
                                CupertinoIcons.arrow_right,
                                size: 20,
                              )
                            ],
                          ),
                          onPressed: () {
                            Next_Screen(context, Welcome());
                          }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
