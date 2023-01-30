import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Profile%20Setting/setting.dart';
import 'package:hive/Widget/body_backgraound.dart';

import '../Widget/next_push.dart';

class User_Profile extends StatefulWidget {
  const User_Profile({Key? key}) : super(key: key);

  @override
  State<User_Profile> createState() => _User_ProfileState();
}

class _User_ProfileState extends State<User_Profile> {
  int _selectIndex = 4;
  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Body_Background(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.06,
                ),
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2)),
                    child: CircleAvatar(
                        radius: 30, backgroundColor: Color(0xff235079)),
                  ),
                  title: Text("Johan Doe",
                      style:
                          GoogleFonts.rubik(color: Colors.white, fontSize: 14)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "ID: ",
                              style: GoogleFonts.rubik(
                                  color: Colors.grey, fontSize: 12)),
                          TextSpan(
                              text: " #1900230991",
                              style: GoogleFonts.rubik(
                                  color: Colors.white, fontSize: 12))
                        ])),
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "Loyalty Point: ",
                            style: GoogleFonts.rubik(
                                color: Colors.grey, fontSize: 12)),
                        TextSpan(
                            text: "150 Points",
                            style: GoogleFonts.rubik(
                                color: Colors.white, fontSize: 12))
                      ]))
                    ],
                  ),
                  trailing: GestureDetector(  onTap: () {
                    // print("next svreen");
                    Next_Screen(context, Setting());
                  },
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.settings,
                          color: Colors.black,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Container(
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffdcdfe2).withOpacity(0.98)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.contact_page),
                          title: Text("Account Activity & Hotel Bills",
                              style: GoogleFonts.rubik(color: Colors.black)),
                          trailing:
                              Icon(Icons.arrow_forward, color: Colors.black),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.airplane_ticket_outlined),
                          title: Text("Promotions",
                              style: GoogleFonts.rubik(color: Colors.black)),
                          trailing:
                              Icon(Icons.arrow_forward, color: Colors.black),
                        ),
                        ListTile(
                          leading: Icon(Icons.error_outline),
                          title: Text("FAQs",
                              style: GoogleFonts.rubik(color: Colors.black)),
                          trailing:
                              Icon(Icons.arrow_forward, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.black,
      //   showUnselectedLabels: false,
      //   unselectedItemColor: Colors.grey,
      //   unselectedLabelStyle:  TextStyle(color: Colors.grey, fontSize: 14),
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.home), label: "Home",backgroundColor: Colors.white),
      //     BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.search), label: "Serch",backgroundColor: Colors.white),
      //     BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.calendar), label: "My Stay",backgroundColor: Colors.white),
      //     BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.phone), label: "Help",backgroundColor: Colors.white),
      //     BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.person), label: "User",backgroundColor: Colors.white),
      //   ],
      //   currentIndex: _selectIndex,
      //   selectedItemColor: Color(0xff143048),
      //   // onTap: _onItemTapped,
      // ),
    );
  }
  // static const _widgetOptions=[
  //
  // ];
}
