import 'package:doctorappointment/Model/components/text.dart';
import 'package:flutter/material.dart';
import 'circleavathar1.dart';

class Appointmentcont extends StatelessWidget {
  const Appointmentcont({
    super.key,
    required this.image,
    required this.doctorname,
    required this.nameclr,
    required this.namesize,
    required this.namewight,
    required this.text,
    required this.tsize,
    required this.tcolour,
    required this.tweight,
    this.child, // New parameter for the child widget
  });

  final ImageProvider? image;
  final String doctorname;
  final Color nameclr;
  final double namesize;
  final FontWeight namewight;
  final String text;
  final Color tcolour;
  final double tsize;
  final FontWeight tweight;
  final Widget? child; // New field to store the child widget

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff57A6A1),
        borderRadius: BorderRadius.circular(15),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Circleavathar1(
                  color: Colors.black,
                  radius: 30,
                  backgroundImage: image,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Te(
                        text: doctorname,
                        cl: nameclr,
                        size: namesize,
                        weight: namewight,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        text,
                        style: TextStyle(
                          color: tcolour,
                          fontSize: tsize,
                          fontWeight: tweight,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          if (child != null) child!, // Add the child widget if it's provided
        ],
      ),
    );
  }
}