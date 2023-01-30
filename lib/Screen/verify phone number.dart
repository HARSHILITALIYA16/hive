import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Screen/scan%20id-password.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../Widget/body_backgraound.dart';

class Verify_Phone_Number extends StatefulWidget {
  const Verify_Phone_Number({Key? key, required this.Number, this.code}) : super(key: key);
  final  Number,code;

  @override
  State<Verify_Phone_Number> createState() => _Verify_Phone_NumberState();
}

class _Verify_Phone_NumberState extends State<Verify_Phone_Number> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {

    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff143048),
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
                  height: h * 0.4,
                  width: w * 0.95,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Enter 4 -digit code sent to you at",style: GoogleFonts.rubik(fontSize: 17),),
                        Row(
                          children: [
                            Text("${widget.code==null?93:widget.code.toString().substring(1)} ",style: GoogleFonts.rubik(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500)),
                            Text("${widget.Number}",style: GoogleFonts.rubik(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.6,
                          child: OTPTextField(
                              controller: otpController,
                              length: 4,
                              width: MediaQuery.of(context).size.width,
                              textFieldAlignment: MainAxisAlignment.spaceAround,
                              fieldWidth: 45,
                              fieldStyle: FieldStyle.underline,
                              outlineBorderRadius: 15,
                              style: TextStyle(fontSize: 17),
                              onChanged: (pin) {
                                print("Changed: " + pin);
                              },
                              onCompleted: (pin) {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Scan_Id(),));
                                print("Completed: " + pin);
                              }),
                        ),
                        Text("Resend Code",style: GoogleFonts.rubik(color: Colors.black),), Text("Edit Mobail Number",style: GoogleFonts.rubik(color: Colors.black),)
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
