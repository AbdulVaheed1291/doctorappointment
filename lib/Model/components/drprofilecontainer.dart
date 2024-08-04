import 'package:flutter/cupertino.dart';

class Profilecont extends StatelessWidget {
  const Profilecont({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 272,
      height: 300,
      decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30)),
          color: CupertinoColors.systemBlue,
          image: DecorationImage(image: AssetImage(image),fit: BoxFit. cover)),
    );
  }
}
