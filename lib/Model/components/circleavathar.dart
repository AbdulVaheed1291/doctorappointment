import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle(
      {super.key,
      required this.cl,
       this.text,
      required this.radius,
       this.textcl,this.photo
      });

  final Color cl;
  final String? text;
  final double radius;
  final Color? textcl;
  final ImageProvider? photo;


  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundImage: photo,
      backgroundColor: cl,
      child: Center(
          child: Text(
        text!,
        style: TextStyle(color: textcl),
      )),
      radius: radius,
    );
  }
}
