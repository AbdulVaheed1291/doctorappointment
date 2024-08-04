import 'package:doctorappointment/doctorsprofiles/drmichel%20jackson,sprofile.dart';
import 'package:flutter/material.dart';

import 'dr.aleena,sprofile.dart';

class Surgen extends StatelessWidget {
  const Surgen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Micle(),));
            },
            trailing: Icon(Icons.arrow_forward, color: Colors.white,),
            leading: CircleAvatar(
              backgroundImage: AssetImage("assetimage/doctor1.jpg"),
            ),
            title: Text(
              "Dr.Micle Jackson MBBS", style: TextStyle(color: Colors.white),
            ),
            tileColor:Color(0xff57A6A1),
            subtitle: Text(
              "Surgen", style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
