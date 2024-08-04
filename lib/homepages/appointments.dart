import 'package:doctorappointment/appointmentselectionpages/appointmentconfirm_cubit.dart';
import 'package:doctorappointment/appointmentselectionpages/appointmentconfirmananu.dart';
import 'package:doctorappointment/appointmentselectionpages/appointmentconfirmkyle.dart';
import 'package:doctorappointment/appointmentselectionpages/appointmentconfirmmicle.dart';
import 'package:doctorappointment/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Model/components/appointmentcontainer.dart';
import '../Model/components/sb.dart';
import '../Model/components/text.dart';
import '../appointmentselectionpages/appointmentconfirmaleena.dart';
import '../timeanddateselectionpages/aleenatimeselection.dart';
import '../timeanddateselectionpages/ananutimeselection.dart';
import '../timeanddateselectionpages/kyletimeselection.dart';
import '../timeanddateselectionpages/miclestimeselection.dart';

import 'appointments_cubit.dart';

class Appointments extends StatefulWidget {
  Appointments({super.key});

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  bool aleena = true;

  String? selectedTimealeena;
  String? selectedTimekylee;
  String? selectedTimeananu;
  String? selectedTimemicle;

  handleSelectedTimealeena(String time) {
    setState(() {
      selectedTimealeena = time;
    });
  }

  handleSelectedTimekyle(String time) {
    setState(() {
      selectedTimekylee = time;
    });
  }

  handleSelectedTimeananu(String time) {
    setState(() {
      selectedTimeananu = time;
    });
  }

  handleSelectedTimemicle(String time) {
    setState(() {
      selectedTimemicle = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => AppointmentsCubit(context),
            child: BlocBuilder<AppointmentsCubit, AppointmentsState>(
              builder: (context, state) {
                final cubitdata = context.read<AppointmentsCubit>();

                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BlocProvider(
                    create: (context) => AppointmentconfirmCubit(context),
                    child: BlocBuilder<AppointmentconfirmCubit,
                        AppointmentconfirmState>(
                      builder: (context, state) {
                        final confirmcubit =
                        context.read<AppointmentconfirmCubit>();

                        context.read<AppointmentconfirmCubit>();
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Te(
                              text: "Schedule Appointment",
                              cl: Colors.black,
                              size: 15,
                              weight: FontWeight.bold,
                            ),
                            Appointmentcont(
                              image: AssetImage("assetimage/fc4.jpg"),
                              doctorname: "Aleeena Jose",
                              nameclr: Colors.white,
                              namesize: 15,
                              namewight: FontWeight.bold,
                              text: "Pediatrition, MBBS\n5  years of exp ",
                              tweight: FontWeight.normal,
                              tcolour: Colors.white,
                              tsize: 15,
                              child: InkWell(
                                onTap: () {
                                  context
                                      .read<AppointmentsCubit>()
                                      .selectDateAleena();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              9),
                                          color: selectedDateAleena.isEmpty
                                              ? Colors.white
                                              : Colors.red,
                                        ),
                                        child: Center(
                                            child: selectedDateAleena.isEmpty
                                                ? Text(
                                              " select date",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                                : Text(
                                              selectedDateAleena,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        width: 110,
                                        height: 40,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                AleenaTimeselection(
                                                  onTimeSelectedaleena:
                                                  handleSelectedTimealeena,
                                                ),
                                          ));
                                        },
                                        child: Container(
                                          child: Center(
                                            child: selectedtimeslotaleena ==
                                                null ||
                                                selectedtimeslotaleena
                                                    .isNotEmpty
                                                ? Text(
                                              selectedtimeslotaleena,
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.bold),
                                            )
                                                : Text(
                                              "Select Time",
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.bold),
                                            ),
                                          ),
                                          width: 110,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: selectedtimeslotaleena
                                                .isNotEmpty
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                9),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Appointmentconfirmpopupaleena()));
                                          },
                                          child: ValueListenableBuilder<bool>(
                                            valueListenable:
                                            appointmentSelectedNotifieraleena,
                                            builder: (context, isselcted,
                                                child) {
                                              return Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(9),
                                                  color: isselcted
                                                      ? Colors.lightGreen
                                                      : Colors.white,
                                                ),
                                                width: 110,
                                                height: 40,
                                                child: Center(
                                                  child: Text(
                                                    isselcted
                                                        ? "Appointment is selected"
                                                        : " Appointment",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                ),
                                              );
                                            },
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            //
                            Sb(height: 40, width: 0),
                            Appointmentcont(
                              image: AssetImage("assetimage/mc3.jpg"),
                              doctorname: "Dr. Kyle Bush",
                              nameclr: Colors.white,
                              namesize: 15,
                              namewight: FontWeight.bold,
                              text: "Cardiologist \n MBBS\n 7years of exp ",
                              tsize: 15,
                              tcolour: Colors.white,
                              tweight: FontWeight.normal,
                              child: InkWell(
                                onTap: () {
                                  context
                                      .read<AppointmentsCubit>()
                                      .selectDateKylee();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(9),
                                          color: selectedDateKylee.isEmpty
                                              ? Colors.white
                                              : Colors.red,
                                        ),
                                        child: Center(
                                            child: selectedDateKylee.isEmpty
                                                ? Text(
                                              "Select Date",
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.bold),
                                            )
                                                : Text(
                                              selectedDateKylee,
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.bold),
                                            )),
                                        width: 110,
                                        height: 40,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                AleenaTimeselection(
                                                  onTimeSelectedaleena:
                                                  handleSelectedTimealeena,
                                                ),
                                          ));
                                        },
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  Kyletimeselection(
                                                      onTimeSelectedkylee:
                                                      handleSelectedTimekyle),
                                            ));
                                          },
                                          child: Container(
                                            child: Center(
                                                child: selectedtimeslotkyle
                                                    .isEmpty
                                                    ? Text(
                                                  "Select Time",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight
                                                          .bold),
                                                )
                                                    : Text(
                                                    selectedtimeslotkyle)),
                                            width: 110,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color:
                                              selectedtimeslotkyle.isEmpty
                                                  ? Colors.white
                                                  : Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                Appointmentconfirmpopupkyle(),
                                          ));
                                        },
                                        child: ValueListenableBuilder(
                                          valueListenable:
                                          appointmentSelectedNotifierkylee,
                                          builder: (context, isselcted, child) {
                                            return Container(
                                              child: Center(
                                                  child: Text(
                                                    isselcted
                                                        ? "Appointment is selected"
                                                        : " Appointment",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  )),
                                              width: 110,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: isselcted
                                                    ? Colors.lightGreen
                                                    :Colors.white,
                                                borderRadius:
                                                BorderRadius.circular(9),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ),
                            //
                            //
                            //
                            Sb(height: 40, width: 0),
                            Appointmentcont(
                                image: AssetImage("assetimage/fdoctor.jpg"),
                                doctorname: "Dr. Ananu",
                                nameclr: Colors.white,
                                namesize: 15,
                                namewight: FontWeight.bold,
                                text: "Dentist \n MBBS\n 4years of exp ",
                                tsize: 15,
                                tcolour: Colors.white,
                                tweight: FontWeight.normal,
                            child: InkWell(
                              onTap: () {
                                context
                                    .read<AppointmentsCubit>()
                                    .selectedDateananu();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(9),
                                        color: selectDateAnanu.isEmpty
                                            ? Colors.white
                                            : Colors.red
                                        ,
                                      ),
                                      child: Center(
                                          child: selectDateAnanu.isEmpty
                                              ? Text(
                                            "Select Date",
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.bold),
                                          )
                                              : Text(selectDateAnanu)),
                                      width: 110,
                                      height: 40,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              Ananutimeselection(
                                                onTimeSelectedananu:
                                                handleSelectedTimeananu,
                                              ),
                                        ));
                                      },
                                      child: Container(
                                        child: Center(
                                            child: selectedtimeslotananu
                                                .isEmpty
                                                ? Text(
                                              "Select Time",
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.bold),
                                            )
                                                : Text(
                                                selectedtimeslotananu)),
                                        width: 110,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: selectedtimeslotananu.isEmpty
                                              ? Colors.white
                                              : Colors.red,
                                          borderRadius:
                                          BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              Appointmentconfirmpopupananu(),
                                        ));
                                      },
                                      child: ValueListenableBuilder(
                                        valueListenable:
                                        appointmentSelectedNotifierananu,
                                        builder:
                                            (context, isselected, child) {
                                          return Container(
                                            child: Center(
                                                child: Text(
                                                  isselected
                                                      ? "Appointment is selected"
                                                      : "Appointment",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                            width: 110,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: isselected
                                                  ? Colors.lightGreen
                                                  : Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(9),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                              ),



                            Sb(height: 40, width: 0),
                            Appointmentcont(
                                image: AssetImage("assetimage/doctor1.jpg"),
                                doctorname: "Dr. Micle Jackson",
                                nameclr: Colors.white,
                                namesize: 15,
                                namewight: FontWeight.bold,
                                text: "Surgen \nMBBS\n 10years of exp ",
                                tsize: 15,
                                tcolour: Colors.white,
                                tweight: FontWeight.normal,
                            child: InkWell(
                              onTap: () {
                                context
                                    .read<AppointmentsCubit>()
                                    .selectedDatemicle();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(9),
                                        color: selectedDateMicle.isEmpty
                                            ? Colors.white
                                            : Colors.red,
                                      ),
                                      child: Center(
                                          child: selectedDateMicle.isEmpty
                                              ? Text(
                                            "Select Date",
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.bold),
                                          )
                                              : Text(
                                            selectedDateMicle,
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.bold),
                                          )),
                                      width: 110,
                                      height: 40,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Micletimeselection(
                                                    onTimeSelectedmicle:
                                                    handleSelectedTimemicle,
                                                  ),
                                            ));
                                      },
                                      child: Container(
                                        child: Center(
                                            child: selectedtimeslotmicle
                                                .isEmpty
                                                ? Text(
                                              "Select Time",
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.bold),
                                            )
                                                : Text(
                                              selectedtimeslotmicle,
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.bold),
                                            )),
                                        width: 110,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: selectedtimeslotmicle.isEmpty
                                              ? Colors.white
                                              : Colors.red,
                                          borderRadius:
                                          BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              Appointmentconfirmpopupmicle(),
                                        ));
                                      },
                                      child: ValueListenableBuilder(
                                        valueListenable:
                                        appointmentSelectedNotifierMicle,
                                        builder:
                                            (context, isselected, child) {
                                          return Container(
                                            child: Center(
                                                child: Text(
                                                  isselected
                                                      ? "Appointment is selected"
                                                      : "Appointment",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                            width: 110,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: isselected
                                                  ? Colors.lightGreen
                                                  : Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(9),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                              ),



                          ],
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
