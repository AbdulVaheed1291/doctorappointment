import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctorappointment/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class HomeCubit extends Cubit<int> {
  HomeCubit(this.context) : super(0);
  BuildContext context;

   updateIndex(int index) {
    emit(index);
  }
  Logout()async{
     await FirebaseAuth.instance.signOut();
     
  }
}
