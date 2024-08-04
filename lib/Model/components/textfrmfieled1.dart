import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;

  CustomTextFormField({required this.labelText, required this.controller,this.keyboradtype});
final keyboradtype;
  @override
  Widget build(BuildContext context) {
    return Container(height: 40,width: double.infinity,
      child: TextFormField(keyboardType:keyboradtype,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
