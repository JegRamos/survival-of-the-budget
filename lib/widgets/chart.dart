import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(child: Text("I'm a chart!")),
        ),
      ),
    );
  }
}
