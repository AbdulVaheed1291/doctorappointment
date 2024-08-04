import 'package:doctorappointment/secondpage.dart';
import 'package:flutter/material.dart';

import 'Model/components/cont.dart';
import 'Model/components/sb.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFDFF),
      appBar: AppBar(
        backgroundColor: Color(0xff57A6A1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          child: SingleChildScrollView(
            child: Column(children: [
              Column(
                children: [
                  Text(
                    "Welcome to ",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Doctor ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff57A6A1)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "choose the doctor that you want with our very own booking app",
                    ),
                  ),
                ],
              ),
            
              Container(
                height:300 ,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assetimage/undraw_doctor_kw5l 1.png"))),
              ),
              Sb(height: 150, width:
              20),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Secondpage(),
                    ));
                  },
                  child: (Cont(
                      he: 56, wi: 156, cl: Color(0xff57A6A1), te: "Get Started",tcolor: Colors.white,)))
            ]),
          ),
        ),
      ),
    );
  }
}
