import 'package:flutter/material.dart';
import 'package:oneconverter/styles.dart';

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "ALL IN ONE",
            style: Styles.allInOne,
          ),
          Text("Calculator", style: Styles.calculator)
        ],
      ),
    );
  }
}
