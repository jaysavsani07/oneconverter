import 'package:flutter/material.dart';
import 'package:oneconverter/styles.dart';

import 'NavigatinDrawer/header_nav_drawer.dart';

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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new Container(
              color: Color.fromRGBO(48, 19, 70, 1),
              child: new DrawerHeader(child: NavigationDrawerHeader()),
            ),
            new Container(
              color: Color.fromRGBO(48, 19, 70, 1),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("Calculator".toUpperCase(),
                        style: TextStyle(
                            color: Colors.white38,
                            fontWeight: FontWeight.bold)),
                  ),
                  AboutListTile(
                    child:
                        Text("Simple", style: TextStyle(color: Colors.white70)),
                    icon: Icon(Icons.home, color: Colors.white60),
                  ),
                  AboutListTile(
                    child: Text("Advance",
                        style: TextStyle(color: Colors.white70)),
                    icon: Icon(Icons.home, color: Colors.white60),
                  ),
                  ListTile(
                    title: Text("Length Converter".toUpperCase(),
                        style: TextStyle(
                            color: Colors.white38,
                            fontWeight: FontWeight.bold)),
                  ),
                  AboutListTile(
                    child: Text("Distance",
                        style: TextStyle(color: Colors.white70)),
                    icon: Icon(Icons.home, color: Colors.white60),
                  ),
                  AboutListTile(
                    child:
                        Text("Area", style: TextStyle(color: Colors.white70)),
                    icon: Icon(Icons.home, color: Colors.white60),
                  ),
                  AboutListTile(
                    child: Text("Temperature",
                        style: TextStyle(color: Colors.white70)),
                    icon: Icon(Icons.home, color: Colors.white60),
                  ),
                  AboutListTile(
                    child: Text("Currency",
                        style: TextStyle(color: Colors.white70)),
                    icon: Icon(Icons.home, color: Colors.white60),
                  ),
                  AboutListTile(
                    child:
                        Text("Unit", style: TextStyle(color: Colors.white70)),
                    icon: Icon(Icons.home, color: Colors.white60),
                  ),
                  AboutListTile(
                    child:
                        Text("Speed", style: TextStyle(color: Colors.white70)),
                    icon: Icon(Icons.home, color: Colors.white60),
                  ),
                  AboutListTile(
                    child:
                        Text("Time", style: TextStyle(color: Colors.white70)),
                    icon: Icon(Icons.home, color: Colors.white60),
                  ),
                  AboutListTile(
                    child:
                        Text("Mass", style: TextStyle(color: Colors.white70)),
                    icon: Icon(Icons.home, color: Colors.white60),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
