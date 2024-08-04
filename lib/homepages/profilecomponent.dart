import 'package:doctorappointment/homepages/profilecomponent_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Model/components/sb.dart';
import '../Model/components/text.dart';
import '../Model/components/textfrmfieled1.dart';


class Profilecomponent extends StatelessWidget {
  const Profilecomponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AccountcomponentCubit(context),
        child: BlocBuilder<AccountcomponentCubit, AccountcomponentState>(
          builder: (context, state) {
            final cubit = context.read<AccountcomponentCubit>();

            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Te(
                                  text: "Personal Details",
                                  cl: Colors.white,
                                  size: 20,
                                  weight: FontWeight.bold),
                              CustomTextFormField(
                                labelText: "Name",
                                controller: cubit.namectr,
                              ),
                              Sb(height: 15, width: 0),
                              CustomTextFormField(
                                keyboradtype: TextInputType.number,
                                labelText: "Contact Number",
                                controller: cubit.contactctr,
                              ),
                              Sb(height: 15, width: 0),
                              CustomTextFormField(
                                labelText: "Email",
                                controller: cubit.emailctr,
                              ),
                              Sb(height: 15, width: 0),
                              CustomTextFormField(
                                labelText: "Gender",
                                controller: cubit.genderctr,
                              ),
                              Sb(height: 15, width: 0),
                              CustomTextFormField(
                                keyboradtype: TextInputType.number,
                                labelText: "DOB",
                                controller: cubit.dobctr,
                              ),
                              Sb(height: 15, width: 0),
                              CustomTextFormField(
                                labelText: "Blood Group",
                                controller: cubit.bloodgroupctr,
                              ),
                              Sb(height: 15, width: 0),
                              CustomTextFormField(
                                keyboradtype: TextInputType.number,
                                labelText: "height",
                                controller: cubit.heightctr,
                              ),
                              Sb(height: 15, width: 0),
                              CustomTextFormField(
                                keyboradtype: TextInputType.number,
                                labelText: "weight",
                                controller: cubit.weightctr,
                              ),
                              Sb(height: 15, width: 0),
                              CustomTextFormField(
                                keyboradtype: TextInputType.number,
                                labelText: "Emergency Contact",
                                controller: cubit.emergencycontactctr,
                              ),
                              Sb(height: 15, width: 0),
                              CustomTextFormField(
                                labelText: "Location",
                                controller: cubit.locationctr,
                              ),
                              Sb(height: 140, width: 0),
                              InkWell(
                                onTap: () {
                                  cubit.pvalidation();
                                },
                                child: Container(
                                  height: 50,
                                  child: Center(
                                    child: Te(
                                      text: "Save",
                                      size: 15,
                                      weight: FontWeight.bold,
                                      cl: Colors.white,
                                    ),
                                  ),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.black),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 650,
                    decoration: BoxDecoration(
                        color: Color(0xff57A6A1),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
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
