import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctorappointment/editfieldscontrol/bloodgroupeditfieled.dart';
import 'package:doctorappointment/editfieldscontrol/contacteditfield.dart';
import 'package:doctorappointment/editfieldscontrol/dobeditfield.dart';
import 'package:doctorappointment/editfieldscontrol/emaileditfield.dart';
import 'package:doctorappointment/editfieldscontrol/emergencyceditfieled.dart';
import 'package:doctorappointment/editfieldscontrol/gendereditfieled.dart';
import 'package:doctorappointment/editfieldscontrol/heighteditfieled.dart';
import 'package:doctorappointment/editfieldscontrol/locationeditfield.dart';
import 'package:doctorappointment/editfieldscontrol/weighteditfieled.dart';
import 'package:doctorappointment/homepages/profilecomponent_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Model/components/sb.dart';
import '../main.dart';
import '../editfieldscontrol/nameeditfield.dart';
import 'profilecomponent.dart';

class PersonaldetailsComponent extends StatelessWidget {
  const PersonaldetailsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Details"),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection(uidvarieble)
            .doc("personal information")
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          if (snapshot.hasData && snapshot.data!.exists) {
            var userData = snapshot.data!.data() as Map<String, dynamic>;
            var Bloodgroup = userData['Bloodgroup'];
            var Contactnumber = userData['Contactnumber'];
            var Dateofbirth = userData['Dateofbirth'];
            var Emailadress = userData['Emailadress'];
            var Emergencycontactnumber = userData['Emergencycontactnumber'];
            var Gender = userData['Gender'];
            var Height = userData['Height'];
            var Location = userData['Location'];
            var Name = userData['Name'];
            var Weight = userData['Weight'];

            return BlocProvider(
              create: (context) => AccountcomponentCubit(context),
              child: BlocBuilder<AccountcomponentCubit, AccountcomponentState>(
                builder: (context, state) {
                  final cubit = context.read<AccountcomponentCubit>();
                  return Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.account_circle,
                              size: 35,
                            ),
                            tileColor: Color(0xff57A6A1),
                            title: Text("Name: $Name"),
                            iconColor: Color(0xff57A6A1),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Nameeditfieled(),
                                    ));
                                  },
                                  child: Icon(Icons.edit_note_sharp),
                                ),
                                Sb(height: 0, width: 20),
                                InkWell(
                                  onTap: () {
                                    cubit.NameDelete();
                                  },
                                  child: Icon(Icons.delete_forever),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.date_range,
                              size: 35,
                            ),
                            tileColor: Color(0xff57A6A1),
                            title: Text("Date of birth: ${Dateofbirth.toString()}"),
                            iconColor: Color(0xff57A6A1),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Dobeditfied(),
                                  ));
                                },child: Icon(Icons.edit_note_sharp)),
                                Sb(height: 0, width: 20),
                                InkWell(
                                  onTap: () {
                                    cubit.dobDelete();
                                  },
                                  child: Icon(Icons.delete_forever),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.contact_page_outlined,
                              size: 35,
                            ),
                            tileColor: Color(0xff57A6A1),
                            title: Text("Contact number: ${Contactnumber.toString()}"),
                            iconColor: Color(0xff57A6A1),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Contacteditfieled(),
                                  ));
                                },child: Icon(Icons.edit_note_sharp)),
                                Sb(height: 0, width: 20),
                                InkWell(
                                  onTap: () {
                                    cubit.contactnumDelete();
                                  },
                                  child: Icon(Icons.delete_forever),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.email_outlined,
                              size: 35,
                            ),
                            tileColor: Color(0xff57A6A1),
                            title: Text("Email: ${Emailadress.toString()}"),
                            iconColor: Color(0xff57A6A1),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Emaileditfieled(),
                                  ));
                                },child: Icon(Icons.edit_note_sharp)),
                                Sb(height: 0, width: 20),
                                InkWell(
                                  onTap: () {
                                    cubit.emailDelete();
                                  },
                                  child: Icon(Icons.delete_forever),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.contact_page,
                              size: 35,
                            ),
                            tileColor: Color(0xff57A6A1),
                            title: Text("Emergency contact: ${Emergencycontactnumber.toString()}"),
                            iconColor: Color(0xff57A6A1),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Emergencyceditfieled(),
                                  ));
                                },child: Icon(Icons.edit_note_sharp)),
                                Sb(height: 0, width: 20),
                                InkWell(
                                  onTap: () {
                                    cubit.emergencycontactDelete();
                                  },
                                  child: Icon(Icons.delete_forever),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.person,
                              size: 35,
                            ),
                            tileColor: Color(0xff57A6A1),
                            title: Text("Gender: ${Gender.toString()}"),
                            iconColor: Color(0xff57A6A1),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Gendereditfieled(),
                                  ));
                                },child: Icon(Icons.edit_note_sharp)),
                                Sb(height: 0, width: 20),
                                InkWell(
                                  onTap: () {
                                    cubit.genderDelete();
                                  },
                                  child: Icon(Icons.delete_forever),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.height,
                              size: 35,
                            ),
                            tileColor: Color(0xff57A6A1),
                            title: Text("Height: ${Height.toString()}"),
                            iconColor: Color(0xff57A6A1),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Heighteditfieledctr(),
                                  ));
                                },child: Icon(Icons.edit_note_sharp)),
                                Sb(height: 0, width: 20),
                                InkWell(
                                  onTap: () {
                                    cubit.heightDelete();
                                  },
                                  child: Icon(Icons.delete_forever),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.monitor_weight_outlined,
                              size: 35,
                            ),
                            tileColor: Color(0xff57A6A1),
                            title: Text("Weight: ${Weight.toString()}"),
                            iconColor: Color(0xff57A6A1),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Weighteditfieled(),
                                  ));
                                },child: Icon(Icons.edit_note_sharp)),
                                Sb(height: 0, width: 20),
                                InkWell(
                                  onTap: () {
                                    cubit.weightDelete();
                                  },
                                  child: Icon(Icons.delete_forever),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.bloodtype_outlined,
                              size: 35,
                            ),
                            tileColor: Color(0xff57A6A1),
                            title: Text("Blood group: ${Bloodgroup.toString()}"),
                            iconColor: Color(0xff57A6A1),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Bloodgroupeditfield(),
                                  ));
                                },child: Icon(Icons.edit_note_sharp)),
                                Sb(height: 0, width: 20),
                                InkWell(
                                  onTap: () {
                                    cubit.bloodgroupDelete();
                                  },
                                  child: Icon(Icons.delete_forever),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.location_on_outlined,
                              size: 35,
                            ),
                            tileColor: Color(0xff57A6A1),
                            title: Text("Location: ${Location.toString()}"),
                            iconColor: Color(0xff57A6A1),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Locationeditfieled(),
                                  ));
                                },child: Icon(Icons.edit_note_sharp)),
                                Sb(height: 0, width: 20),
                                InkWell(
                                  onTap: () {
                                    cubit.locationDelete();
                                  },
                                  child: Icon(Icons.delete_forever),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }

          return Center(
            child: Profilecomponent(),
          );
        },
      ),
    );
  }
}
