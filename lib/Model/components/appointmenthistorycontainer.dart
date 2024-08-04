import 'package:flutter/material.dart';

class Appointmenthistorycont extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final IconData icon;
  final String titletext;
  final String valuetext;
  final String? valuetext1;

  const Appointmenthistorycont({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    required this.icon,
    required this.titletext,
    required this.valuetext,
    this.valuetext1

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 4),
            blurRadius: 6,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 40,
                color: Color(0xff57A6A1),
              ),Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      titletext,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(valuetext,style: TextStyle(fontSize: 18),),
                  ),
                  Text(valuetext1??toString(),style: TextStyle(fontSize: 18),),
                ],
              ),
            ],
          ),
         

        ],
      ),
    );
  }
}