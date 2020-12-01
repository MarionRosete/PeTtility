//For Drop down list
import 'package:flutter/material.dart';

class Pets extends StatefulWidget {
  final int numPets;
  Pets({this.numPets});

  @override
  _Pets createState() => _Pets();
}

class _Pets extends State<Pets> {
  int dropDownValue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        value: dropDownValue,
        onChanged: (int newVal) {
          setState(() {
            dropDownValue = newVal;
          });
        },
        items: [
          DropdownMenuItem(
            value: 0,
            child: Text('Select Pet '),
          ),
          DropdownMenuItem(
            value: 1,
            child: Text('Dogs'),
          ),
          DropdownMenuItem(
            value: 2,
            child: Text('Cat'),
          ),
          DropdownMenuItem(
            value: 3,
            child: Text('Chicken'),
          ),
          DropdownMenuItem(
            value: 4,
            child: Text('Pig'),
          ),
        ],
      ),
    );
  }
}

class ModeSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Pets(),
        ),
      ),
    );
  }
}
