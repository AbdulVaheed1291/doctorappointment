import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctorappointment/adminpannel/adminpage.dart';
import 'package:doctorappointment/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../homepages/homepage.dart';

part 'signup_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.context) : super(SigninInitial());

  final BuildContext context;
  TextEditingController emailctr = TextEditingController();
  TextEditingController passwordctr = TextEditingController();
  TextEditingController namectr = TextEditingController();
  TextEditingController conformpassword = TextEditingController();
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firedata = FirebaseFirestore.instance;

   uidupdate() {
    emit(SigninInitial());
    uidvarieble = auth.currentUser?.uid ?? "";
  }
  register() async {
    try {
      await auth
          .createUserWithEmailAndPassword(
          email: emailctr.text.trim(), password: passwordctr.text.trim())
          .then((value) { postdetailsFirebase(); });
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      print(e);
    }
  }
  postdetailsFirebase() async {
     uidupdate();
    var user = auth.currentUser;
    CollectionReference ref = FirebaseFirestore.instance.collection(uidvarieble);
    UserEntity userEntity = UserEntity(
        email: emailctr.text,
        name: namectr.text,
        rool: "user",
       );
    ref.doc(user!.uid).set(userEntity.toJson());
    root(user: user);
  }
  root({User? user}) async {
    await firebaseFirestore.collection(uidvarieble).doc(user!.uid).get().then(
          (value) {
        if (value.exists) {
          switch (value.get("rool")) {
            case "admin":
              if (ConnectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AdminPage(),
                ));
              }
              break;
            case "user":
              if (ConnectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Homescreen()
                ));
              }
              break;

              }
          }
        }

    );
  }

}
class UserEntity {
  final String? userId;
  final String email;
  final String name;
  final String rool;


  UserEntity(
      {this.userId,
        required this.email,
        required this.name,
        required this.rool,
        });

  factory UserEntity.fromJson(Map<String, dynamic> json,
      {required String id}) =>
      UserEntity(

        email: json["email"],
        userId: id,
        name: json["name"],
        rool: json["rool"],
      );

  Map<String, dynamic> toJson() =>
      {"email": email, "name": name, "rool": rool,};
}