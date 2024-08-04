part of 'appointments_cubit.dart';

@immutable
abstract class AppointmentsState {



}

class AppointmentsInitial extends AppointmentsState {}

class AppointmentsDateSelectedAleena extends AppointmentsState {
  final String selectedDateAleena;



  AppointmentsDateSelectedAleena(this.selectedDateAleena);
}

class AppointmentsDateSelectedKylee extends AppointmentsState {
  final String selectedDatekylee;

  AppointmentsDateSelectedKylee(this.selectedDatekylee);
}

class AppointmentsDateSelectedananu extends AppointmentsState {
  final String selectedDateananu;

  AppointmentsDateSelectedananu(this.selectedDateananu);
}

class AppointmentsDateSelectedMicle extends AppointmentsState {
  final String selectedDatemicle;

  AppointmentsDateSelectedMicle(this.selectedDatemicle);



















}

