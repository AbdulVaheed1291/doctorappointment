import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctorappointment/appointmentselectionpages/appointmenthistory.dart';
import 'package:doctorappointment/homepages/appointments_cubit.dart';
import 'package:doctorappointment/homepages/personaldetailsfiled.dart';
import 'package:doctorappointment/homepages/profilecomponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Model/components/sb.dart';
import '../main.dart';

class Profilenavigate extends StatelessWidget {
  const Profilenavigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      StreamBuilder(
                        stream: FirebaseFirestore.instance
                            .collection(uidvarieble)
                            .doc("personal information")
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(child: CircularProgressIndicator());
                          }

                          if (snapshot == null) {
                            return Profilecomponent();
                          }

                          if (snapshot.hasData) {
                            return PersonaldetailsComponent();
                          }

                          if (snapshot.hasError) {
                            return Text("Personal Details Loading Error");
                          }

                          return Center(child: CircularProgressIndicator());
                        },
                      ),
                ));
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Personal details",
                    style:
                    TextStyle(color: CupertinoColors.white, fontSize: 16,fontWeight: FontWeight.bold),
                  ),
                ),
                height: 80,
                width: double.infinity,
                color: Color(0xff57A6A1),
              ),
            ),
            Sb(height: 10, width: 0),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Appointmenthistory(),
                ));
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Appointment history",
                    style:
                    TextStyle(color: CupertinoColors.white, fontSize: 16,fontWeight: FontWeight.bold),
                  ),
                ),
                height: 80,
                width: double.infinity,
                color: Color(0xff57A6A1),
              ),
            ),
            BlocProvider(
              create: (context) => AppointmentsCubit(context),
              child: BlocBuilder<AppointmentsCubit, AppointmentsState>(
                builder: (context, state) {final cubit=context.read<AppointmentsCubit>();
                   return Text("");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

