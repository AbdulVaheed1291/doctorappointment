import 'package:flutter/material.dart';

class Circleavathar1 extends StatelessWidget {
  final double radius;
  final Color color;
  final ImageProvider<Object>? backgroundImage;

  Circleavathar1({
    required this.radius,
    required this.color,
    this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
      backgroundImage: backgroundImage,
    );
  }
}
