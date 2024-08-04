import 'dart:ui';

import 'package:doctorappointment/singinandloginnavigate.dart';
import 'package:flutter/material.dart';

import 'Model/components/cont.dart';
import 'Model/components/sb.dart';
import 'Model/components/text.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 700,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                      AssetImage("assetimage/undraw_doctors_hwty 1.png"))),
            ),
            Te(
                text:
                "Finding available appointments \n                        are",
                cl: Colors.black,
                size: 15,
                weight: FontWeight.bold),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Te(
                    text: "Simple ",
                    cl: Color(0xff57A6A1),
                    size: 15,
                    weight: FontWeight.bold),
                Te(
                    text: " & ",
                    cl: Colors.black,
                    size: 15,
                    weight: FontWeight.bold),
                Te(
                    text: " Effortless",
                    cl: Color(0xff57A6A1),
                    size: 15,
                    weight: FontWeight.bold),
              ],
            ),
            Sb(height: 150, width: 0),
            InkWell(onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Singinandloginnavigate(),));
            },
              child: Cont(
                  he: 59,
                  wi: 149,
                  cl:Color(0xff57A6A1),
                  te: "Next",
                  tcolor: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
