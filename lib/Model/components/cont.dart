import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  const Cont(
      {super.key,
      required this.he,
      required this.wi,
      required this.cl,
       this.te, this.tcolor,this.child,});

  final double he;
  final double wi;
  final Color cl;
  final String? te;
  final Color? tcolor ;
  final Widget? child;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: wi,
      height: he,
      child: Center(child: Text(te!,style: TextStyle(color: tcolor),),),
      decoration:
          BoxDecoration(color: cl, borderRadius: BorderRadius.circular(15)),
    );
  }
}
