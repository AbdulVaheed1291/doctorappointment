import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctorappointment/main.dart';
import 'package:flutter/cupertino.dart';

part 'appointmentconfirm_state.dart';

class AppointmentconfirmCubit extends Cubit<AppointmentconfirmState> {
  AppointmentconfirmCubit(this.context) : super(AppointmentconfirmInitial());

  BuildContext context;

  aleenaappointment() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("Appointment informations")
        .set({
      "Doctor name": "Dr.Aleena Jose",
      "Date": selectedDateAleena,
      "Time": selectedtimeslotaleena,
    });
    appointmentSelectedNotifieraleena.value = true;
  }

  kyleappointment() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("Appointment informations")
        .set({
      "Doctor name": "Dr.Kyle Bush",
      "Date": selectedDateKylee,
      "Time": selectedtimeslotkyle,
    });
    appointmentSelectedNotifierkylee.value = true;
  }

  ananuappointment() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("Appointment informations")
        .set({
      "Doctor name": "Dr.Ananu",
      "Date": selectDateAnanu,
      "Time": selectedtimeslotananu,
    });
    appointmentSelectedNotifierananu.value = true;
  }

  Micleappointment() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("Appointment informations")
        .set({
      "Doctor name": "Dr.Micle Jackson",
      "Date": selectedDateMicle,
      "Time": selectedtimeslotmicle,
    });
    appointmentSelectedNotifierMicle.value = true;
  }
}
