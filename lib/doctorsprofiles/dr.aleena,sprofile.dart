import 'package:doctorappointment/homepages/appointments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/components/cont.dart';
import '../Model/components/doctordetailscontainercomponent.dart';
import '../Model/components/text.dart';

class Aleena extends StatelessWidget {
  const Aleena({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Details"),
        backgroundColor: Color(0xff57A6A1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleImage(image: AssetImage("assetimage/fc4.jpg")),
                SizedBox(height: 16),

                Te(
                  text: "Dr. Aleena Jose",
                  cl: Colors.black,
                  size: 24,
                  weight: FontWeight.bold,
                ),
                SizedBox(height: 8),

                Te(
                  text: "Pediatrician",
                  cl: Color(0xff57A6A1),
                  size: 18,
                  weight: FontWeight.normal,
                ),
                SizedBox(height: 16),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff57A6A1)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Te(
                    text: "Bio",
                    cl: Color(0xff57A6A1),
                    size: 14,
                    weight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 200),

                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Appointments(),
                      ),
                    );
                  },
                  child: Cont(
                    he: 60,
                    wi: 350,
                    cl: Color(0xff57A6A1),
                    te: "Take Appointment",
                    tcolor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
