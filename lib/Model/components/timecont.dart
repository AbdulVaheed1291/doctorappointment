import 'package:flutter/material.dart';

class TimeSelectContainer extends StatelessWidget {
  final String text;
  final Color color;

  const TimeSelectContainer({super.key, required this.text,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 110,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2), // changes the position of the shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}