
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker_gallery_camera/image_picker_gallery_camera.dart';



class Image_PIcker extends StatefulWidget {
  Image_PIcker({ Key? key, }) : super(key: key);
 
  @override
  _Image_PIckerState createState() => _Image_PIckerState();
}

class _Image_PIckerState extends State<Image_PIcker> {
  var _image;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () => getImage(ImgSource.Both),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: Text(
                    "Both".toUpperCase(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              _image != null ? Image.file(File(_image.path)) : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
