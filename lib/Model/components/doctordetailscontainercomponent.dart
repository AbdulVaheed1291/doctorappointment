import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({super.key, required this.image});

  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(width: 200,height: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
