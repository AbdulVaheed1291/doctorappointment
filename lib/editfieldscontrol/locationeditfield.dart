import 'package:doctorappointment/homepages/profilecomponent_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Locationeditfieled extends StatelessWidget {
  const Locationeditfieled({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => AccountcomponentCubit(context),
      child: BlocBuilder<AccountcomponentCubit,
          AccountcomponentState>(
        builder: (context, state) {final cubit=context.read<AccountcomponentCubit>();
        return AlertDialog(
          title: Text("Edit"),
          content: TextFormField(
            controller: cubit.locationctr,
            decoration: InputDecoration(
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("back")),
                TextButton(
                    onPressed: () {cubit.locationEdit();
                      Navigator.of(context).pop();

                    },
                    child: Text("save"))
              ],
            )
          ],
        );
        },
      ),
    );
  }
}
