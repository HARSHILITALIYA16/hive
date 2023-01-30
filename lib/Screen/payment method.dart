import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Screen/finish.dart';

import '../Widget/body_backgraound.dart';

class Payment_Method extends StatefulWidget {
  const Payment_Method({Key? key}) : super(key: key);

  @override
  State<Payment_Method> createState() => _Payment_MethodState();
}

class _Payment_MethodState extends State<Payment_Method> {
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
                  height: h * 0.6,
                  width: w * 0.95,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Step 3/3",
                          style: GoogleFonts.rubik(
                              fontSize: 14, color: Colors.grey),
                        ),
                        Text(
                          "Add Payment Methods",
                          style: GoogleFonts.rubik(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Card(
                          child: Container(
                            height: h * 0.1,
                            width: w,
                      decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),
                          border:Border.all(color: Colors.grey)),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Card(
                                  child: Container(height: h*0.05,width: w*0.15,

                                    decoration: BoxDecoration(
                                        color: Color(0xff143048),
                                        borderRadius: BorderRadius.circular(5),image: DecorationImage(image: AssetImage("assets/card.png"))),
                                  ),
                                ),
                                Text(
                                  "Credit Card",
                                  style: GoogleFonts.rubik(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                Icon(CupertinoIcons.arrow_right,size: 20,)
                              ],
                            ),
                          ),
                        ),InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Finish(),));},
                          child: Card(
                            child: Container(
                              height: h * 0.1,
                              width: w,
                      decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),
                            border:Border.all(color: Colors.grey)),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    child: Container(height: h*0.05,width: w*0.15,

                                      decoration: BoxDecoration(
                                          color: Color(0xff1c3d92),
                                          borderRadius: BorderRadius.circular(5),image: DecorationImage(image: AssetImage("assets/Paypal.png"))),
                                    ),
                                  ),
                                  Text(
                                    "PayPal",
                                    style: GoogleFonts.rubik(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Icon(CupertinoIcons.arrow_right,size: 20,)
                                ],
                              ),
                            ),
                          ),
                        ),InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Finish(),));},
                          child: Card(
                            child: Container(
                              height: h * 0.1,
                              width: w,
                      decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),
                            border:Border.all(color: Colors.grey)),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    child: Container(height: h*0.05,width: w*0.15,

                                      decoration: BoxDecoration(
                                          color: Color(0xff143048),
                                          borderRadius: BorderRadius.circular(5),image: DecorationImage(image: AssetImage("assets/mask.png"))),
                                    ),
                                  ),
                                  Text(
                                    "MetaMask",
                                    style: GoogleFonts.rubik(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Icon(CupertinoIcons.arrow_right,size: 20,)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(CupertinoIcons.lock),
                            Flexible(
                              child: Text(
                                "Your Payment Information is safe with us, We use secured transmission and encrypted storage.",
                                style: GoogleFonts.rubik(
                                    fontSize: 12),
                              ),
                            ),
                          ],
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
