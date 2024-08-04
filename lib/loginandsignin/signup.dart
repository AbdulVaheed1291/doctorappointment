import 'package:doctorappointment/loginandsignin/login.dart';
import 'package:doctorappointment/loginandsignin/signup_cubit.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../Model/components/cont.dart';
import '../Model/components/sb.dart';
import '../Model/components/text.dart';
import '../Model/components/textformfieled.dart';

class Singin extends StatelessWidget {
  const Singin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff57A6A1),
      ),
      body: Center(
        child: BlocProvider(
          create: (context) => SigninCubit(context),
          child: BlocBuilder<SigninCubit, SigninState>(
            builder: (context, state) {
              final cubit = context.read<SigninCubit>();
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Sb(height: 60, width: 0),
                    Te(
                        text: "Welcome!",
                        cl: Color(0xff57A6A1),
                        size: 25,
                        weight: FontWeight.bold),
                    Sb(height: 50, width: 0),
                    Te(
                        text: "Create Your Account",
                        cl:Color(0xff57A6A1),
                        size: 15,
                        weight: FontWeight.bold),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Txtfrm(label: "Name",controller: cubit.namectr,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Txtfrm(
                        controller: cubit.emailctr,
                        label: "email",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Txtfrm(
                        controller: cubit.passwordctr,
                        label: "password",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Txtfrm(
                          controller: cubit.conformpassword,
                          label: "Confirm Password"),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                      },
                      child: Te(
                          text: "Login here",
                          cl: Color(0xff57A6A1),
                          size: 12,
                          weight: FontWeight.normal),
                    ),
                    Sb(height: 100, width: 0),
                    InkWell(
                        onTap: () {
                          cubit.register();
                        },
                        child: Cont(
                          he: 59,
                          wi: 149,
                          cl: Color(0xff57A6A1),
                          te: "Sign Up",
                          tcolor: Colors.white,
                        )),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
