

import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class Te extends StatelessWidget {
  const Te({super.key,required this.text,required this.cl,required this.size,required this.weight});
final String text;
  final Color cl;
  final double size;
  final weight;
  @override
  Widget build(BuildContext context) {
    return  Text(text,style: TextStyle(color: cl,fontSize: size,fontWeight: weight ),);
  }
}
