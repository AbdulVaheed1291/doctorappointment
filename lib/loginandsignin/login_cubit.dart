import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctorappointment/adminpannel/adminpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../homepages/homepage.dart';
import '../main.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.context) : super(LoginInitial());

  final BuildContext context;
  final TextEditingController emailctr = TextEditingController();
  final TextEditingController passwordctr = TextEditingController();

  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> uidupdate() async {
    User? user = auth.currentUser;
    if (user != null) {
      uidvarieble = user.uid;
    } else {
      uidvarieble = "";
    }
  }

  loginfunction() async {
    try {
      await uidupdate();
      await auth.signInWithEmailAndPassword(
        email: emailctr.text.trim(),
        password: passwordctr.text.trim(),
      );
      await uidupdate();
      await root(user: auth.currentUser);
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      print("$e>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    }
  }

  root({User? user}) async {
    if (user != null) {
      final DocumentSnapshot<Map<String, dynamic>> value =
          await firebaseFirestore.collection(uidvarieble).doc(user.uid).get();
      if (value.exists) {
        final String role = value.get("rool");
        switch (role) {
          case "admin":
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => AdminPage(),
            ));
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
              "Welcome admin",
              style: TextStyle(color: Colors.cyanAccent),
            )));
            break;
          case "user":
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => Homescreen(),
            ));
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
              "Log in successfully",
              style: TextStyle(color: Colors.green),
            )));
            break;
          default:
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Unknown role: $role for user ${user.uid}")));
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content:
                Text("User document does not exist for user ${user.uid}")));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("User is not logged in")));
    }
  }
}

class UserEntity {
  final String? userId;
  final String email;
  final String name;
  final String rool;
  final String consumerid;

  UserEntity(
      {this.userId,
      required this.email,
      required this.name,
      required this.rool,
      required this.consumerid});

  factory UserEntity.fromJson(Map<String, dynamic> json,
          {required String id}) =>
      UserEntity(
        consumerid: json["consumerid"],
        email: json["email"],
        userId: id,
        name: json["name"],
        rool: json["rool"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "name": name,
        "rool": rool,
        "consumerid": consumerid,
      };
}
