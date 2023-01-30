import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Otp_Textfield extends StatefulWidget {
  Otp_Textfield({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _Otp_TextfieldState createState() => _Otp_TextfieldState();
}

class _Otp_TextfieldState extends State<Otp_Textfield> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cleaning_services),
        onPressed: () {
          print("Floating button was pressed.");
          otpController.clear();
          // otpController.set(['2', '3', '5', '5', '7']);
          // otpController.setValue('3', 0);
          // otpController.setFocus(1);
        },
      ),
      body: Center(
        child: Container(
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
                print("Completed: " + pin);
              }),
        ),
      ),
    );
  }
}