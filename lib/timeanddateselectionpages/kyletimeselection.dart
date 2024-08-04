import 'package:flutter/material.dart';

import '../Model/components/timecont.dart';
import '../main.dart';

class Kyletimeselection extends StatefulWidget {
  final Function(String) onTimeSelectedkylee;



  Kyletimeselection({super.key, required this.onTimeSelectedkylee, });


  @override
  State<Kyletimeselection> createState() => _TimeselectionState();

}

class _TimeselectionState extends State<Kyletimeselection> {


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
                  selectedtimeslotkyle = "9:00am";
                });
              },
              child: TimeSelectContainer(
                text: "9:00am",
                color: selectedtimeslotkyle == "9:00am"
                    ? Colors.greenAccent
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotkyle = "11:00am";
                });
              },
              child: TimeSelectContainer(
                text: "11:00am",
                color: selectedtimeslotkyle == "11:00am"
                    ? Colors.greenAccent
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotkyle = "1:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "1:00pm",
                color: selectedtimeslotkyle == "1:00pm"
                    ? Colors.greenAccent
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotkyle = "3:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "3:00pm",
                color: selectedtimeslotkyle == "3:00pm"
                    ? Colors.greenAccent
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotkyle = "5:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "5:00pm",
                color: selectedtimeslotkyle == "5:00pm"
                    ? Colors.greenAccent
                    : Colors.white,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  selectedtimeslotkyle = "7:00pm";
                });
              },
              child: TimeSelectContainer(
                text: "7:00pm",
                color: selectedtimeslotkyle == "7:00pm"
                    ? Colors.greenAccent
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
              if (selectedtimeslotkyle != null) {
                widget.onTimeSelectedkylee(selectedtimeslotkyle!);

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
