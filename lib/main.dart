import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/Home%20Page/destiation%203.dart';
import 'package:hive/Home%20Page/exploerlocation.dart';
import 'package:hive/Home%20Page/filter.dart';
import 'package:hive/Home%20Page/hotel%20detail.dart';
import 'package:hive/Home%20Page/hotel%20listing%203.dart';
import 'package:hive/Home%20Page/hotel%20listing%20map.dart';
import 'package:hive/Home%20Page/room%20detail.dart';
import 'package:hive/Home%20Page/room%20listing.dart';
import 'package:hive/Home%20Page/room%20options.dart';
import 'package:hive/My%20Stay/check%20dectiated.dart';
import 'package:hive/My%20Stay/my%20stay.dart';
import 'package:hive/Profile%20Setting/account%20information.dart';
import 'package:hive/Profile%20Setting/setting.dart';
import 'package:hive/Profile%20Setting/user%20profile.dart';
import 'package:hive/Room%20Control/bathroom%20light.dart';
import 'package:hive/Room%20Control/bathroom_floor_heting.dart';
import 'package:hive/Room%20Control/door.dart';
import 'package:hive/Room%20Control/light.dart';
import 'package:hive/Room%20Control/locked.dart';
import 'package:hive/Room%20Control/room%20control%20bathroom.dart';
import 'package:hive/Room%20Control/room%20not%20ready.dart';
import 'package:hive/Room%20Control/room%20ready.dart';
import 'package:hive/Room%20Control/service%20GYM.dart';
import 'package:hive/Room%20Control/service%20SPA.dart';
import 'package:hive/Room%20Control/tv%20control.dart';
import 'package:hive/Room%20Control/unable%20unlock.dart';
import 'package:hive/Room%20Control/unlocking.dart';
import 'package:hive/Room%20Control/wifi.dart';
import 'package:hive/Screen/complte%20information.dart';
import 'package:hive/Screen/finish.dart';
import 'package:hive/Screen/payment%20method.dart';
import 'package:hive/Screen/scan%20id-password.dart';
import 'package:hive/Screen/scan%20result.dart';
import 'package:hive/Screen/sign%20in.dart';
import 'package:hive/Screen/verify%20phone%20number.dart';
import 'package:hive/Widget/Star_Rating.dart';
import 'package:hive/Widget/date%20time.dart';
import 'package:hive/Widget/exte.dart';
import 'package:hive/Widget/google%20map.dart';
import 'package:hive/Widget/otp%20textfield.dart';
import 'package:hive/Widget/scroll%20page%202.dart';
import 'package:hive/Widget/scroll%20page.dart';
import 'Booking Pages/summary.dart';
import 'Home Page/destination 1.dart';
import 'Home Page/destination 2.dart';
import 'Home Page/home_page.dart';
import 'Room Control/air conditioner.dart';
import 'Room Control/room control.dart';
import 'Room Control/unlocked.dart';
import 'Screen/welcome.dart';
import 'Screen/phone number.dart';
import 'Widget/body_backgraound.dart';
import 'Widget/chat.dart';
import 'Widget/country code.dart';
import 'Widget/datepicker.dart';
import 'Widget/image picker.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: "HIVE", home: Welcome());
  }
}
