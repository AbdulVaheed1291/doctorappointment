import 'package:flutter/material.dart';

import 'dr.aleena,sprofile.dart';

class Pediatrtion extends StatelessWidget {
  const Pediatrtion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Aleena(),));
            },
            trailing: Icon(Icons.arrow_forward, color: Colors.white,),
            leading: CircleAvatar(
              backgroundImage: AssetImage("assetimage/fc4.jpg"),
            ),
            title: Text(
              "Dr.Aleena Jose MBBS", style: TextStyle(color: Colors.white),
            ),
            tileColor: Color(0xff57A6A1),
            subtitle: Text(
              "Pediatrition", style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
