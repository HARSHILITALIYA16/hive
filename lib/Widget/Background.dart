import 'package:flutter/material.dart';


class bg extends StatefulWidget {
  const bg({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<bg> createState() => _bgState();
}

class _bgState extends State<bg> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                // Color.fromRGBO(41, 90, 136, 0.99),
                Color(0xff143048),
                // Color.fromRGBO(20, 66, 119, 0.45098039215686275),
                Color(0xff224180),
                // Color.fromRGBO(29, 45, 99, 0.89)
                Color(0xff1c3f62),
              ])),
      child: widget.child,
    );
  }
}
