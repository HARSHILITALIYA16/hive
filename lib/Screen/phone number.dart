import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:hive/Screen/verify%20phone%20number.dart';
import 'package:hive/Widget/Button.dart';
import 'package:hive/Widget/country%20code.dart';

import '../Widget/body_backgraound.dart';

class Phone_Number extends StatefulWidget {
  const Phone_Number({Key? key}) : super(key: key);

  @override
  State<Phone_Number> createState() => _Phone_NumberState();
}

class _Phone_NumberState extends State<Phone_Number> {
  TextEditingController _otp = TextEditingController();
  TextEditingController _number = TextEditingController();
  Country? _selectedCountry;
  var calling_code;
  var mobile;

  @override
  void initState() {
    // TODO: implement initState
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country;
    });
  }

  Widget build(BuildContext context) {

    final country = _selectedCountry;
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
                  height: h * 0.5,
                  width: w * 0.95,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Enter Your Phone Number",
                            style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w400, fontSize: 17.5)),
                        InkWell(
                          onTap: _onPressedShowDialog,
                          child: country == null
                              ? Container(
                                  height: 45,
                                  width: 45,
                                )
                              : Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        _onPressedShowDialog();
                                      },
                                      child: Container(
                                        height: 45,
                                        width: 45,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            country.flag,
                                            package: countryCodePackageName,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text("${country.callingCode}"),
                                    Flexible(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: TextFormField(keyboardType: TextInputType.phone, inputFormatters:[
                                        LengthLimitingTextInputFormatter(10),
                                      ], controller: _otp,

                                          onTap: (){
                                        setState(() {
                                          mobile=_otp.text;
                                          print("ff$_otp");
                                          print(mobile);
                                        });
                                          },
                                          decoration: InputDecoration(
                                              hintText: "Your Phone number")),
                                    )),
                                  ],
                                ),
                        ),
                        Divider(
                          indent: 2,
                          color: Colors.grey[400],
                          endIndent: 2,
                        ),
                        Text(
                          "By Continue you may recieve a SMS for verification. Message and data rates may apply",
                          maxLines: 5,
                          style: GoogleFonts.rubik(fontSize: 13),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                      InkWell(
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: LinearGradient(
                                  colors: [Color(0xff183754), Color(0xff23507a)],
                                  end: Alignment.topCenter,
                                  begin: Alignment.bottomCenter)),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [SizedBox(width:35,),
                              Text("Continue",style: GoogleFonts.rubik(color: Colors.white),),
                              Icon(Icons.arrow_forward,color:Colors.white)
                            ],
                          ),
                        ),
                        onTap: (){setState(() {
                           mobile=_otp.text;
                        });
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Verify_Phone_Number(Number: mobile,code: calling_code)));},
                      ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 1,
                                color: Colors.black,
                              ),
                            ),
                            Text("Or", style: GoogleFonts.rubik()),
                            Expanded(
                              child: Container(
                                height: 1,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      ],
                    ),
                  ),
                )),
              ))
        ],
      ),
    );
  }

  void _onPressedShowDialog() async {
    final country = await showCountryPickerDialog(
      context,
    );
    if (country != null) {
      setState(() {
        _selectedCountry = country;
        calling_code=country.callingCode;
        print(calling_code);
      });
    }
  }
}

