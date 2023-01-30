import 'package:flutter/material.dart';
void Next_Screen(context, page){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => page,));
}