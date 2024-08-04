import 'package:flutter/material.dart';

class Txtfrm extends StatelessWidget {
  const Txtfrm({super.key,required this.label, this.controller});
  final String label;
  final controller;

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,
      height: 50,
      child: TextFormField(controller:controller ,
        decoration: InputDecoration(labelText: label,labelStyle:TextStyle(color: Colors.white),fillColor:Color(0xff57A6A1),filled: true,
            border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(13),
        )),
      ),
    );
  }
}
