import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctorappointment/homepages/personaldetailsfiled.dart';
import 'package:doctorappointment/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'profilecomponent_state.dart';

class AccountcomponentCubit extends Cubit<AccountcomponentState> {
  AccountcomponentCubit(this.context) : super(AccountcomponentInitial());
  BuildContext context;

  final TextEditingController namectr = TextEditingController();
  final TextEditingController contactctr = TextEditingController();
  final TextEditingController emailctr = TextEditingController();
  final TextEditingController genderctr = TextEditingController();
  final TextEditingController dobctr = TextEditingController();
  final TextEditingController bloodgroupctr = TextEditingController();
  final TextEditingController heightctr = TextEditingController();
  final TextEditingController weightctr = TextEditingController();
  final TextEditingController emergencycontactctr = TextEditingController();
  final TextEditingController locationctr = TextEditingController();

  Future<void> personaldetils() async {
    var user = uidvarieble;
    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("User is not authenticated")),
      );
      return;
    }

    try {
      await FirebaseFirestore.instance
          .collection(uidvarieble)
          .doc("personal information")
          .set({
        "Name": namectr.text,
        "Contactnumber": contactctr.text,
        "Emailadress": emailctr.text,
        "Gender": genderctr.text,
        "Dateofbirth": dobctr.text,
        "Bloodgroup": bloodgroupctr.text,
        "Height": heightctr.text,
        "Weight": weightctr.text,
        "Emergencycontactnumber": emergencycontactctr.text,
        "Location": locationctr.text,
      });

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => PersonaldetailsComponent(),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text("Failed to save personal details: ${e.toString()}")),
      );
    }
  }

  pvalidation() {
    if (namectr.text.isEmpty ||
        contactctr.text.isEmpty ||
        emailctr.text.isEmpty ||
        genderctr.text.isEmpty ||
        dobctr.text.isEmpty ||
        bloodgroupctr.text.isEmpty ||
        heightctr.text.isEmpty ||
        weightctr.text.isEmpty ||
        emergencycontactctr.text.isEmpty ||
        locationctr.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Please fill in all required fields")));
    } else {
      personaldetils();
    }
  }

  //edits
  nameEdit() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("personal information")
        .update({"Name": namectr.text});
  }

  dobEdit() async {
    await FirebaseFirestore.instance.collection(uidvarieble).doc(
        "personal information").update({'Dateofbirth':dobctr.text});
  }



  contactnumEdit() async {
    await FirebaseFirestore.instance.collection(uidvarieble).doc(
        "personal information").update({'Contactnumber':contactctr.text});
  }



  emailEdit() async {
    await FirebaseFirestore.instance.collection(uidvarieble).doc(
        "personal information").update({'Emailadress':emailctr.text});
  }



  emergencycontactEdit() async {
    await FirebaseFirestore.instance.collection(uidvarieble).doc(
        "personal information").update({'Emergencycontactnumber':emergencycontactctr.text});
  }

  genderEdit() async {
    await FirebaseFirestore.instance.collection(uidvarieble).doc(
        "personal information").update({'Gender':genderctr.text});
  }

  heightEdit() async {
    await FirebaseFirestore.instance.collection(uidvarieble).doc(
        "personal information").update({'Height':heightctr.text});
  }


  weightEdit() async {
    await FirebaseFirestore.instance.collection(uidvarieble).doc(
        "personal information").update({'Weight':weightctr.text});
  }



  bloodgroupEdit() async {
    await FirebaseFirestore.instance.collection(uidvarieble).doc(
        "personal information").update({'Bloodgroup':bloodgroupctr.text});
  }




  locationEdit() async {
    await FirebaseFirestore.instance.collection(uidvarieble).doc(
        "personal information").update({'Location':locationctr.text});
  }

































  // Delete
  NameDelete() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble).doc("personal information").update(
        {'Name': FieldValue.delete()});
  }

  dobDelete() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("personal information").update(
        {'Dateofbirth': FieldValue.delete()});
  }

  contactnumDelete() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("personal information").update(
        {'Contactnumber': FieldValue.delete()});
  }

  emailDelete() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("personal information").update(
        {'Emailadress': FieldValue.delete()});
  }

  emergencycontactDelete() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("personal information")
        .update({'Emergencycontactnumber': FieldValue.delete()});
  }

  genderDelete() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("personal information")
        .update({'Gender': FieldValue.delete()});
  }

  heightDelete() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("personal information").update({'Height': FieldValue.delete()});
  }

  weightDelete() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("personal information").update({'Weight': FieldValue.delete()});
  }

  bloodgroupDelete() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("personal information")
        .update({'Bloodgroup': FieldValue.delete()});
  }

  locationDelete() async {
    await FirebaseFirestore.instance
        .collection(uidvarieble)
        .doc("personal information")
        .update({'Location': FieldValue.delete()});
  }
}
