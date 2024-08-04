import 'package:doctorappointment/loginandsignin/login.dart';
import 'package:flutter/material.dart';

import 'Model/components/cont.dart';
import 'Model/components/sb.dart';
import 'loginandsignin/signup.dart';

class Singinandloginnavigate extends StatelessWidget {
  const Singinandloginnavigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assetimage/undraw_Profile_re_4a55 1.png"))),
            ),
            Text(
              "Already Signed up?",
              style: TextStyle(fontSize: 25),
            ),
            Sb(height: 80, width: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                    },
                    child: Cont(
                      he: 59,
                      wi: 116,
                      cl: Color(0xff57A6A1),
                      te: "yes",
                      tcolor: Colors.white,
                    )),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Singin(),
                      ));
                    },
                    child: Cont(
                      he: 59,
                      wi: 116,
                      cl: Color(0xff57A6A1),
                      te: "No",
                      tcolor: Colors.white,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
