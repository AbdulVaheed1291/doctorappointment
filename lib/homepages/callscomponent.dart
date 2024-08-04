import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Model/components/sb.dart';
import '../datas/calldatasofdoctors.dart';

class Callscomponent extends StatelessWidget {
  const Callscomponent({super.key});

  //callfuction
  makePhoneCall(String phonenumber ) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phonenumber,
    );
    await launchUrl(launchUri);
  }



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: ListView.separated(
            padding: EdgeInsets.only(bottom: 60),

            separatorBuilder: (context, index) => Sb(height: 20, width: 0),
            itemCount: callDatas.length,
            itemBuilder: (context, index) {
              final callData = callDatas[index];
              return Material(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        callData['name']!,
                      ),
                      subtitle: Text(callData['specalist']!),
                      tileColor: Color(0xff57A6A1),
                      trailing: InkWell(onTap: () {
                        makePhoneCall(callData['phonenumber']!);
                      }, child: Icon(Icons.call)),
                    ),


                  ],
                ),
              );
            },
          ),

        ),
      ],
    );
  }
}
