import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//drawer nu icon kadhva mate appbar ma action ma kaik text print karavi devo etale remove thay jashe.....

class End_Drawer extends StatefulWidget {
  const End_Drawer({super.key});

  @override
  State<End_Drawer> createState() => _End_DrawerState();
}

class _End_DrawerState extends State<End_Drawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  List _image = [
    "assets/reception.png",
    "assets/spa.png",
    "assets/gym.png",
    "assets/pool.png",
    "assets/laundry.png",
    "assets/food_order.png",
    "assets/feedback.png",
  ];

  List _text = [
    "Reception",
    "SPA",
    "GYM",
    "Pool",
    "Laundry",
    "Food Order",
    "Feedback",
  ];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [Text("data")],
          title: InkWell(onTap: _openEndDrawer, child: Text('Drawer Demo'))),
      body: Center(
        child: ElevatedButton(
          onPressed: _openEndDrawer,
          child: const Text('Open End Drawer'),
        ),
      ),
      endDrawer: Container(
        width: w * 0.4,
        child: Drawer(
          backgroundColor: Colors.teal.withOpacity(.3),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: EdgeInsets.only(left: w * 0.29, top: h * 0.02),
                  child: Icon(Icons.cancel_outlined, color: Colors.white),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: h * 0.11,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(_image[index]),
                          Padding(
                            padding: EdgeInsets.only(top: h * 0.01),
                            child: Text(_text[index],
                                style: GoogleFonts.rubik(color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      // Disable opening the end drawer with a swipe gesture.
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
