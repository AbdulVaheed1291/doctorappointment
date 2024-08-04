import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../main.dart';


part 'appointments_state.dart';

class AppointmentsCubit extends Cubit<AppointmentsState> {
  AppointmentsCubit(this.context) : super(AppointmentsInitial());
  BuildContext context;











  selectDateAleena() async {
    DateTime? selected = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
      initialDate: DateTime.now(),

    );

    if (selected != null) {
      selectedDateAleena = selected.toIso8601String();
      emit(AppointmentsDateSelectedAleena(selectedDateAleena));
    }
  }

  selectDateKylee() async {
    DateTime? selected = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
      initialDate: DateTime.now(),
    );

    if (selected != null) {
      selectedDateKylee = selected.toIso8601String();
      emit(AppointmentsDateSelectedKylee(selectedDateKylee));
    }
  }

  selectedDateananu() async {
    DateTime? selected = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
      initialDate: DateTime.now(),
    );
    if (selected != null) {
      selectDateAnanu = selected.toIso8601String();
      emit(AppointmentsDateSelectedananu(selectDateAnanu));
    }
  }

  selectedDatemicle() async {
    DateTime? selected = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
      initialDate: DateTime.now(),
    );

    if (selected != null) {
      selectedDateMicle = selected.toIso8601String();
      emit(AppointmentsDateSelectedMicle(selectedDateMicle));
    }
  }
}
