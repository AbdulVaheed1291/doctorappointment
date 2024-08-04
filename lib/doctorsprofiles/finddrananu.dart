import 'package:doctorappointment/doctorsprofiles/dr.ananu,sprofile.dart';
import 'package:flutter/material.dart';

import 'dr.aleena,sprofile.dart';

class Dentist extends StatelessWidget {
  const Dentist ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Ananu(),));
            },
            trailing: Icon(Icons.arrow_forward, color: Colors.white,),
            leading: CircleAvatar(
              backgroundImage: AssetImage("assetimage/fdoctor.jpg"),
            ),
            title: Text(
              "Dr.Ananu MBBS", style: TextStyle(color: Colors.white),
            ),
            tileColor:Color(0xff57A6A1),
            subtitle: Text(
              "Dentist", style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
