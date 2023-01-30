import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/widget/button.dart';

import '../Widget/body_backgraound.dart';
import 'booking_successfully.dart';

enum SingingCharacter { Container, Container1, Container2, Container3 }

class Payment_method_1 extends StatefulWidget {
  const Payment_method_1({Key? key}) : super(key: key);

  @override
  State<Payment_method_1> createState() => _Payment_method_1State();
}

class _Payment_method_1State extends State<Payment_method_1> {
  SingingCharacter? _character = SingingCharacter.Container;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text(
            "Payment Method",
            style: GoogleFonts.rubik(color: Colors.white),
          ),
        ),
        backgroundColor: Color(0xff143048),
      ),
      body: Stack(
        children: [
          Body_Background(),
          ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.02),
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Container(
                          height: h * 0.07,
                          width: w * 0.22,
                          decoration: BoxDecoration(
                              color: Color(0xff0742a6),
                              image: DecorationImage(
                                image: AssetImage("assets/Visa.png"),
                              ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        title: Text(
                          ".... .... .... 2309",
                          style: GoogleFonts.rubik(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Expires 10/24",
                          style: GoogleFonts.rubik(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        trailing: Radio<SingingCharacter>(
                          value: SingingCharacter.Container,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.02, top: h * 0.02),
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Container(
                          height: h * 0.07,
                          width: w * 0.22,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://s.yimg.com/ny/api/res/1.2/wtIjyTGgEFjm5nQG3vLuKQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTY0MA--/https://s.yimg.com/uu/api/res/1.2/HaCmXCuL1no0cWC_NQpoLQ--~B/aD0xMDAwO3c9MTAwMDthcHBpZD15dGFjaHlvbg--/http://globalfinance.zenfs.com/images/US_AHTTP_AP_FINANCIALTIMES/cd71282f4a6a483aa0f301c759ecc5d0_original.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        title: Text(
                          ".... .... .... 2309",
                          style: GoogleFonts.rubik(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Expires 10/24",
                          style: GoogleFonts.rubik(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        trailing: Radio<SingingCharacter>(
                          value: SingingCharacter.Container1,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.02),
                    child: Divider(
                      endIndent: 20,
                      indent: 20,
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.02, top: h * 0.02),
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Container(
                          height: h * 0.07,
                          width: w * 0.22,
                          decoration: BoxDecoration(
                              color: Color(0xff0742a6),
                              image: DecorationImage(
                                image: AssetImage("assets/Paypal.png"),
                              ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        title: Text(
                          "Johan Doe",
                          style: GoogleFonts.rubik(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "johan09@gmail.com",
                          style: GoogleFonts.rubik(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        trailing: Radio<SingingCharacter>(
                          value: SingingCharacter.Container2,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.02),
                    child: Divider(
                      endIndent: 20,
                      indent: 20,
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.02, top: h * 0.02),
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Container(
                          height: h * 0.07,
                          width: w * 0.22,
                          decoration: BoxDecoration(
                              color: Color(0xff0742a6),
                              image: DecorationImage(
                                image: AssetImage("assets/mask.png"),
                              ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        title: Text(
                          "MetaMask",
                          style: GoogleFonts.rubik(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "johan09@gmail.com",
                          style: GoogleFonts.rubik(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        trailing: Radio<SingingCharacter>(
                          value: SingingCharacter.Container3,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.02),
                    child: Divider(
                      endIndent: 20,
                      indent: 20,
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.02, top: h * 0.02),
                    child: Container(
                      height: h * 0.08,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text("Add Payment Method",
                                  style:
                                      GoogleFonts.rubik(color: Colors.black)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: w * 0.15),
                            child: IconButton(
                              onPressed: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (context, setState) {
                                        return ListView(
                                          children: [
                                            Container(
                                              height: h * 0.8,
                                              width: w,
                                              color: Color(0xffe3e5e8),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                            horizontal: 25,
                                                          ),
                                                          child: Text(
                                                              "Add Payment Method",
                                                              style: GoogleFonts.rubik(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: w * 0.1),
                                                        child: IconButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          icon:
                                                              Icon(Icons.clear),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: w * 0.18,
                                                                top: h * 0.03),
                                                        child: Container(
                                                          height: h * 0.08,
                                                          width: w * 0.22,
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .blueGrey
                                                                  .withOpacity(
                                                                      .7),
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/card.png")),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: w * 0.1,
                                                                top: h * 0.03),
                                                        child: Container(
                                                          width: 1,
                                                          height: h * 0.07,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: w * 0.1,
                                                                top: h * 0.03),
                                                        child: Container(
                                                          height: h * 0.08,
                                                          width: w * 0.22,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/mask.png")),
                                                              color: Color(
                                                                  0xff8597c2),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: h * 0.03),
                                                    child: Divider(
                                                      endIndent: 20,
                                                      indent: 20,
                                                      thickness: 1,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: w * 0.04),
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              label: Text(
                                                                  "Card Holder"),
                                                              prefixIcon: Icon(
                                                                Icons.person,
                                                              )),
                                                    ),
                                                  ),
                                                  Divider(
                                                    endIndent: 30,
                                                    indent: 30,
                                                    thickness: 1,
                                                    color: Colors.black,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: w * 0.04),
                                                    child: TextFormField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        label:
                                                            Text("Card Number"),
                                                        prefixIcon: Icon(
                                                          Icons.credit_card,
                                                        ),
                                                        suffixIcon: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right:
                                                                      w * 0.01),
                                                          child: Container(
                                                            width: w * 0.02,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                    image: NetworkImage(
                                                                        "https://s.yimg.com/ny/api/res/1.2/wtIjyTGgEFjm5nQG3vLuKQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTY0MA--/https://s.yimg.com/uu/api/res/1.2/HaCmXCuL1no0cWC_NQpoLQ--~B/aD0xMDAwO3c9MTAwMDthcHBpZD15dGFjaHlvbg--/http://globalfinance.zenfs.com/images/US_AHTTP_AP_FINANCIALTIMES/cd71282f4a6a483aa0f301c759ecc5d0_original.jpg")),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Divider(
                                                    endIndent: 30,
                                                    indent: 30,
                                                    thickness: 1,
                                                    color: Colors.black,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          child: Column(
                                                            children: [
                                                              TextFormField(
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                decoration:
                                                                    InputDecoration(
                                                                        border: InputBorder
                                                                            .none,
                                                                        label: Text(
                                                                            "Expire Date"),
                                                                        prefixIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .date_range,
                                                                        )),
                                                              ),
                                                              Divider(
                                                                endIndent: 20,
                                                                indent: 20,
                                                                thickness: 1,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          child: Column(
                                                            children: [
                                                              TextFormField(
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                decoration:
                                                                    InputDecoration(
                                                                        border: InputBorder
                                                                            .none,
                                                                        label: Text(
                                                                            "CVV"),
                                                                        prefixIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .date_range,
                                                                        )),
                                                              ),
                                                              Divider(
                                                                endIndent: 20,
                                                                indent: 20,
                                                                thickness: 1,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: w * 0.05),
                                                        child: Checkbox(
                                                          checkColor:
                                                              Colors.white,
                                                          value: isChecked,
                                                          onChanged:
                                                              (bool? value) {
                                                            setState(() {
                                                              isChecked =
                                                                  value!;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: w * 0.05,
                                                                top: h * 0.02),
                                                        child: SizedBox(
                                                          width: w * 0.7,
                                                          child: Text(
                                                              maxLines: 5,
                                                              "I authorise T&H to store my financial details in a secures way, so that i will not have to enter them again for future booking.",
                                                              style: GoogleFonts
                                                                  .rubik(
                                                                color:
                                                                    Colors.grey,
                                                              )),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: h * 0.03),
                                                    child: button(
                                                        text: Text("Add Card"),
                                                        navi:
                                                            Payment_method_1()),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                              icon: Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.05),
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: w * 0.05),
                            child: Icon(
                              Icons.error_outline,
                              color: Colors.blue,
                            )),
                        Padding(
                          padding:
                              EdgeInsets.only(left: w * 0.05, top: h * 0.02),
                          child: Text(
                              "By Proceeding, you agree to T&H Hotel &\nResort’s Term of use and Privacy policy",
                              style: GoogleFonts.rubik(
                                color: Colors.grey,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.02),
                    child: Container(
                      height: h * 0.18087,
                      width: w,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Padding(
                        padding: EdgeInsets.only(top: h * 0.04),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: w * 0.05, top: h * 0.01),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "Total:",
                                        style: GoogleFonts.rubik(
                                          color: Colors.grey,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: " \$1375",
                                              style: GoogleFonts.rubik(
                                                  fontSize: 17,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: w * 0.05, top: h * 0.01),
                                  child: Text(
                                    "(Earn 33 Point)",
                                    style: GoogleFonts.rubik(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.08, top: h * 0.01),
                              child: Column(
                                children: [
                                  Container(
                                      height: h * 0.06,
                                      width: w * 0.5,
                                      child: button(
                                        text: Text("Book & Pay Now",
                                            style: GoogleFonts.rubik(
                                                color: Colors.white)),
                                        navi: Booking_successfully(),
                                      )),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Book Now & Pay Later",
                                        style: GoogleFonts.rubik(
                                            decoration:
                                                TextDecoration.underline),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
