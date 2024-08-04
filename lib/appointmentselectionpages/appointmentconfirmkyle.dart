import 'package:doctorappointment/appointmentselectionpages/appointmentconfirm_cubit.dart';
import 'package:doctorappointment/appointmentselectionpages/appointmenthistory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Model/components/text.dart';

class Appointmentconfirmpopupkyle extends StatelessWidget {
  const Appointmentconfirmpopupkyle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppointmentconfirmCubit(context),
      child: BlocBuilder<AppointmentconfirmCubit, AppointmentconfirmState>(
        builder: (context, state) {
          final cubit = context.read<AppointmentconfirmCubit>();
          return AlertDialog(
            title: Te(
              text: "Confirm Your Appointment?",
              cl: Colors.black,
              size: 20,
              weight: FontWeight.bold,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  cubit.kyleappointment();
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Appointmenthistory(),
                  ));
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Te(
                        text: "Appointment is Confirmed with Dr Kylee",
                        cl: Colors.white,
                        size: 15,
                        weight: FontWeight.w500),
                    duration: Duration(seconds: 3),
                    backgroundColor: Color(0xff57A6A1),
                  ));
                },
                child: Text('Yes'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('No'),
              ),
            ],
          );
        },
      ),
    );
  }
}
