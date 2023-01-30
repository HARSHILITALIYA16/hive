import 'package:flutter/material.dart';

class button extends StatefulWidget {
  const button({Key? key, required this.text, required this.navi})
      : super(key: key);
  final Widget text;
  final Widget navi;


  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  final colo=Colors.white;
  @override
  Widget build(BuildContext context) {
    return InkWell(
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
            widget.text,
            Icon(Icons.arrow_forward,color: colo,)
          ],
        ),
      ),
      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget.navi,));},
    );
  }
}
