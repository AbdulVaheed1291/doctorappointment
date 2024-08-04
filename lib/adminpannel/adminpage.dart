import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../Model/components/appointmenthistorycontainer.dart';
import '../Model/components/sb.dart';
import '../main.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin dashboard'
            '', style: TextStyle(fontWeight: FontWeight.bold)),
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
        child: StreamBuilder<DocumentSnapshot>(
          stream: FirebaseFirestore.instance
              .collection(uidvarieble)
              .doc("Appointment informations")
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }

            if (!snapshot.hasData || !snapshot.data!.exists) {
              return Center(child: Text('No appointment data available'));
            }

            var data = snapshot.data!.data() as Map<String, dynamic>;
            var drname = data["Doctor name"] ?? 'N/A';
            var selecteddate = data["Date"] ?? 'N/A';
            var selectedtime = data["Time"] ?? 'N/A';
            var name=data['Name'];

            return SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Appointmenthistorycont(
                    height: 120,
                    width: double.infinity,
                    color: Colors.white,
                    icon: Icons.medical_services,
                    titletext: "Doctor ",
                    valuetext: drname,
                    valuetext1: "",
                  ),
                  Sb(height: 30, width: 0),
                  Appointmenthistorycont(
                    height: 120,
                    width: double.infinity,
                    color: Colors.white,
                    icon: Icons.calendar_today_outlined,
                    titletext: "Appointment",
                    valuetext: selecteddate,
                    valuetext1: selectedtime,
                  ),
                  Sb(height: 30, width: 0),
                  Appointmenthistorycont(
                    height: 120,
                    width: double.infinity,
                    color: Colors.white,
                    icon: Icons.account_circle_outlined,
                    titletext: "Patient",
                    valuetext: name.toString(),
                    valuetext1: "",
                  ),
                  Sb(height: 30, width: 0),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0, 4),
                          blurRadius: 8,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Patient Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 16),
                          Text('Gender: ${data['Gender'] ?? 'N/A'}'),
                          Text('Blood Type: ${data['Bloodtype'] ?? 'N/A'}'),
                          Text('Phone: ${data['Phone'] ?? 'N/A'}'),
                          Text('Email: ${data['Email'] ?? 'N/A'}'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}