import 'package:doctorappointment/doctorsprofiles/Dr.kyle,sprofile.dart';
import 'package:flutter/material.dart';

import 'dr.aleena,sprofile.dart';

class Cardiologist extends StatelessWidget {
  const Cardiologist ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Kylee(),));
            },
            trailing: Icon(Icons.arrow_forward, color: Colors.white,),
            leading: CircleAvatar(
              backgroundImage: AssetImage("assetimage/mc3.jpg"),
            ),
            title: Text(
              "Dr.Kyle Bush MBBS", style: TextStyle(color: Colors.white),
            ),
            tileColor:Color(0xff57A6A1),
            subtitle: Text(
              "Cardiologist", style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
