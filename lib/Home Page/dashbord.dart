import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/Home%20Page/destination%201.dart';
import 'package:hive/Home%20Page/home_page.dart';
import 'package:hive/My%20Stay/my%20stay.dart';
import 'package:hive/Profile%20Setting/user%20profile.dart';

class Dash_Borad extends StatefulWidget {
  const Dash_Borad({Key? key}) : super(key: key);

  @override
  State<Dash_Borad> createState() => _Dash_BoradState();
}

class _Dash_BoradState extends State<Dash_Borad> {
  Widget screen= Home_page();
  int ind=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ind,selectedItemColor: Color(0xff1E4466),
        unselectedItemColor: Color(0xff989EA6),

        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 13,
        onTap: (i){
          setState(() {
            ind =i;
            i==0?
            screen=Home_page()
                :
            i==1?
            screen=Destination_1()
                :
           i==2?
               screen=My_Stay()
               :
            i==4?
                screen=User_Profile()
                :null;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                size: 25,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search, size: 25),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.calendar,
                 size: 25),
              label: "My Stay"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone,
                  size: 25),
              label: "Help"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person,
                  size: 25),
              label: "user")
        ],
      ),
    );
  }
}