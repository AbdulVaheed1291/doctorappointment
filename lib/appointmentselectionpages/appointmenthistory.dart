import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class Appointmenthistory extends StatelessWidget {
  const Appointmenthistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment History',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Color(0xff57A6A1),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffD9E4EE),
              Color(0xffF7F7F7),
            ],
          ),
        ),
        child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection(uidvarieble)
              .doc("Appointment informations")
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasData) {
              var data = snapshot.data!.data() as Map<String, dynamic>;
              var drname = data["Doctor name"];
              var selecteddate = data["Date"];
              var selectedtime = data["Time"];
              return Center(
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Doctor Name',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff57A6A1),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          drname,
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Appointment Date',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff57A6A1),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          selecteddate,
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Appointment Time',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff57A6A1),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          selectedtime,
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            return Center(child: Text('No data available'));
          },
        ),
      ),
    );
  }
}