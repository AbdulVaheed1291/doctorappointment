import 'package:flutter/material.dart';

import '../Model/components/timecont.dart';
import '../main.dart';

class Micletimeselection extends StatefulWidget {
  final Function(String) onTimeSelectedmicle;



  Micletimeselection({super.key, required this.onTimeSelectedmicle
    , });


  @override
  State<Micletimeselection> createState() => _TimeselectionState();

}

class _TimeselectionState extends State<Micletimeselection> {


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
                  selectedtimeslotmicle = "9:00am";
                });
              },
              child: TimeSelectContainer(
                text: "9:00am",
                color: selectedtimeslotmicle == "9:00am"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotmicle = "11:00am";
                });
              },
              child: TimeSelectContainer(
                text: "11:00am",
                color: selectedtimeslotmicle == "11:00am"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotmicle = "1:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "1:00pm",
                color: selectedtimeslotmicle == "1:00pm"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotmicle = "3:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "3:00pm",
                color: selectedtimeslotmicle == "3:00pm"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotmicle = "5:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "5:00pm",
                color: selectedtimeslotmicle == "5:00pm"
                    ? Colors.green
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotmicle = "7:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "7:00pm",
                color: selectedtimeslotmicle == "7:00pm"
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
              if (selectedtimeslotmicle != null) {
                widget.onTimeSelectedmicle(selectedtimeslotmicle!);

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
