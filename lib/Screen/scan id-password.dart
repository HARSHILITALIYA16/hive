import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/Screen/scan%20result.dart';
import 'package:image_picker_gallery_camera/image_picker_gallery_camera.dart';

import '../Widget/body_backgraound.dart';

class Scan_Id extends StatefulWidget {
  const Scan_Id({Key? key}) : super(key: key);

  @override
  State<Scan_Id> createState() => _Scan_IdState();
}

class _Scan_IdState extends State<Scan_Id> {
  var _photo;
  var _image;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Complete Profile", style: GoogleFonts.rubik(fontSize: 17)),
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
                  height: h * 0.55,
                  width: w * 0.95,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Step 1/3",
                          style: GoogleFonts.rubik(
                              fontSize: 14, color: Colors.grey),
                        ),
                        Text(
                          "Scan ID/Passport",
                          style: GoogleFonts.rubik(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          height: h * 0.18,
                          width: w * 0.9,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xff143048).withOpacity(0.9),
                                    Color(0xff143048),
                                  ]),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 300,
                                child: IconButton(
                                  icon: Icon(CupertinoIcons.camera,
                                      color: Colors.white, size: 40),
                                  onPressed: () {
                                    getImage(ImgSource.Both);
                                    style:
                                    ElevatedButton.styleFrom(
                                      primary: Colors.red,
                                    );
                                  },
                                ),
                              ),
                              _image != null
                                  ? Container(
                                      height: 80,
                                      child: Image.file(File(_image.path),
                                          fit: BoxFit.cover))
                                  : Container(),
                            ],
                          ),
                        ),
                        Text(
                          "Scan your ID/Passpost for Fast Enter Information & Online Check-in",
                          style: GoogleFonts.rubik(fontSize: 13),
                        ),
                        Row(
                          children: [
                            Icon(CupertinoIcons.lock),
                            Flexible(
                              child: Text(
                                "Your Information is safe with us, We never rent, sell, or exchange your information with anyone.",
                                style: GoogleFonts.rubik(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          indent: 2,
                          color: Colors.grey,
                          endIndent: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "or",
                              style: GoogleFonts.rubik(fontSize: 13),
                            ),
                            TextButton(
                                onPressed: () {
                                  _photo = _image != null
                                      ? Container(
                                          height: 80,
                                          child: Image.file(File(_image.path),
                                              fit: BoxFit.cover))
                                      : Container();
                                  print("0000000000000000000000${_photo}");
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Scan_Result(),
                                  ));
                                },
                                child: Text(
                                  "Skip Now",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.black),
                                ))
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

  Future getImage(ImgSource source) async {
    var image = await ImagePickerGC.pickImage(
        enableCloseButton: true,
        closeIcon: Icon(
          Icons.close,
          color: Colors.red,
          size: 12,
        ),
        context: context,
        source: source,
        barrierDismissible: true,
        cameraIcon: Icon(
          Icons.camera_alt,
          color: Colors.red,
        ), //cameraIcon and galleryIcon can change. If no icon provided default icon will be present
        cameraText: Text(
          "From Camera",
          style: TextStyle(color: Colors.red),
        ),
        galleryText: Text(
          "From Gallery",
          style: TextStyle(color: Colors.blue),
        ));
    setState(() {
      _image = image;
    });
  }
}
