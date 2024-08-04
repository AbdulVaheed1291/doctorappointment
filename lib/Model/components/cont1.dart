
import 'package:flutter/material.dart';

class Cont1 extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double borderRadius;
  final String text;
  final Widget child;
  final double tsize;


  Cont1({
    required this.height,
    required this.width,
    required this.color,
    required this.borderRadius,
    required this.text,  required this.tsize,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: tsize,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          child,
        ],
      ),
    );
  }
}
