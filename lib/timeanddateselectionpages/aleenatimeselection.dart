import 'package:flutter/material.dart';

import '../Model/components/timecont.dart';
import '../main.dart';

class AleenaTimeselection extends StatefulWidget {
  final Function(String) onTimeSelectedaleena;



   AleenaTimeselection({super.key, required this.onTimeSelectedaleena, });


  @override
  State<AleenaTimeselection> createState() => _TimeselectionState();

}

class _TimeselectionState extends State<AleenaTimeselection> {


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xff57A6A1),
      title: Text('Select time'),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotaleena = "9:00am";
                });
              },
              child: TimeSelectContainer(
                text: "9:00am",
                color: selectedtimeslotaleena == "9:00am"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotaleena = "11:00am";
                });
              },
              child: TimeSelectContainer(
                text: "11:00am",
                color: selectedtimeslotaleena == "11:00am"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotaleena = "1:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "1:00pm",
                color: selectedtimeslotaleena == "1:00pm"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotaleena = "3:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "3:00pm",
                color: selectedtimeslotaleena == "3:00pm"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotaleena = "5:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "5:00pm",
                color: selectedtimeslotaleena == "5:00pm"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotaleena = "7:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "7:00pm",
                color: selectedtimeslotaleena == "7:00pm"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            setState(() {
              if (selectedtimeslotaleena != null) {
                widget.onTimeSelectedaleena(selectedtimeslotaleena!);

              }

            });
            Navigator.of(context).pop();
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
