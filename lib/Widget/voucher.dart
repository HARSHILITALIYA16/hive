import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Voucher extends StatefulWidget {
  const Voucher(
      {Key? key, required this.text, required this.text1, required this.color})
      : super(key: key);
  final text;
  final text1;
  final color;

  @override
  State<Voucher> createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
        height: h * 0.14,
        child: Stack(
          children: [
            Container(
                height: h * 0.14,
                width: w * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                   color: widget.color,
                )),
            Positioned(
                left: w * 0.22,
                child: Container(
                  height: h * 0.13,
                  child: VerticalDivider(
                    color: Colors.black,
                  ),
                )),
            Positioned(
              right: MediaQuery.of(context).size.width / 1.9,
              top: -15,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
              ),
            ),
            Positioned(
              right: MediaQuery.of(context).size.width / 1.9,
              bottom: -15,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 15.0),
              child: Container(
                height: h * 0.1,
                width: w * 0.21,
                child: Image.asset("assets/Hive_Logos.png",
                    fit: BoxFit.fitWidth),
              ),
            ),
            Positioned(
              left: w * 0.32,
              top: 15,
              child: Container(
                height: h * 0.12,
                width: w * 0.42,
                color: Colors.transparent,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      widget.text,
                      widget.text1,
                      TextButton(onPressed: (){}, child: Row(
                        children: [
                          Text("Use Now",style: GoogleFonts.rubik(color: Colors.amber),),
                          Icon(Icons.arrow_forward,size: 15,color: Colors.amber,)
                        ],
                      ))
                    ]),
              ),
            )
          ],
        ),
      );
  }
}
