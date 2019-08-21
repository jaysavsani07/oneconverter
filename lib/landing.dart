import 'package:flutter/material.dart';
import 'package:oneconverter/Calculator/simple_cal.dart';
import 'package:oneconverter/NavigatinDrawer/drawer.dart';
import 'package:oneconverter/styles.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'oneconverter',
          style: Styles.headlineText,
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black, size: 12.0, opacity: 1.0),
      ),
      body: SimpleCalculator(),
      drawer: NDrawer(),
    );
  }
}