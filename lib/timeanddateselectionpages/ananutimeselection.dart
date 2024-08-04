import 'package:flutter/material.dart';

import '../Model/components/timecont.dart';
import '../main.dart';

class Ananutimeselection extends StatefulWidget {
  final Function(String) onTimeSelectedananu;



  Ananutimeselection({super.key, required this.onTimeSelectedananu, });


  @override
  State<Ananutimeselection> createState() => _TimeselectionState();

}

class _TimeselectionState extends State<Ananutimeselection> {


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
                  selectedtimeslotananu = "9:00am";
                });
              },
              child: TimeSelectContainer(
                text: "9:00am",
                color: selectedtimeslotananu == "9:00am"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotananu = "11:00am";
                });
              },
              child: TimeSelectContainer(
                text: "11:00am",
                color: selectedtimeslotananu == "11:00am"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotananu = "1:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "1:00pm",
                color: selectedtimeslotananu == "1:00pm"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotananu = "3:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "3:00pm",
                color: selectedtimeslotananu == "3:00pm"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotananu = "5:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "5:00pm",
                color: selectedtimeslotananu == "5:00pm"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotananu = "7:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "7:00pm",
                color: selectedtimeslotananu == "7:00pm"
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
              if (selectedtimeslotananu != null) {
                widget.onTimeSelectedananu(selectedtimeslotananu!);

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
