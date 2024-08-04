import 'package:flutter/cupertino.dart';

class Sb extends StatelessWidget {
  const Sb({super.key,required this.height,required this.width});

  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width,height: height,);
  }
}
