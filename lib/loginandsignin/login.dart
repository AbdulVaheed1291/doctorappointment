import 'package:doctorappointment/loginandsignin/login_cubit.dart';
import 'package:doctorappointment/loginandsignin/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Model/components/cont.dart';
import '../Model/components/sb.dart';
import '../Model/components/text.dart';
import '../Model/components/textformfieled.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff57A6A1),
      ),
      body: Center(
        child: BlocProvider(
          create: (context) => LoginCubit(context),
          child: BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              final cubit = context.read<LoginCubit>();
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Sb(height: 60, width: 0),
                    Te(
                        text: "Welcome Back",
                        cl: Color(0xff57A6A1),
                        size: 25,
                        weight: FontWeight.bold),
                    Sb(height: 50, width: 0),
                    Te(
                        text: "Log in to your account",
                        cl: Color(0xff57A6A1),
                        size: 15,
                        weight: FontWeight.bold),
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
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Singin(),
                        ));
                      },
                      child: Te(
                          text: "register here",
                          cl: Color(0xff57A6A1),
                          size: 12,
                          weight: FontWeight.normal),
                    ),
                    Sb(height: 40, width: 0),
                    
                    Sb(height: 100, width: 0),
                    InkWell(
                        onTap: () {
                         cubit.loginfunction();
                        },
                        child: Cont(
                          he: 59,
                          wi: 149,
                          cl: Color(0xff57A6A1),
                          te: "Login In",
                          tcolor: Colors.white,
                        ))
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
