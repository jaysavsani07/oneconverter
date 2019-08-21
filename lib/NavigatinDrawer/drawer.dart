import 'package:flutter/material.dart';
import 'package:oneconverter/Calculator/simple_cal.dart';
import 'header_nav_drawer.dart';

class NDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new Container(
            color: Color.fromRGBO(48, 19, 70, 1),
            child: new DrawerHeader(child: NavigationDrawerHeader()),
          ),
          new Container(
            color: Color.fromRGBO(48, 19, 70, 1),
            child: initDrawerList(context),
          ),
          new Container(
            color: Color.fromRGBO(48, 19, 70, 1),
            child: initDrawerSetting(context),
          ),
          ThemeSwitch(),
        ],
      ),
    );
  }

    Column initDrawerList(context) => new Column(
        children: <Widget>[
          ListTile(
            title: Text("Calculator".toUpperCase(),
                style: TextStyle(
                    color: Colors.white38, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            title: Text("Simple", style: TextStyle(color: Colors.white70)),
            leading: Icon(Icons.home, color: Colors.white60),
            selected: true,
            enabled: true,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (ctxt) => new SimpleCalculator()));
            },
          ),
          ListTile(
            title: Text("Advance", style: TextStyle(color: Colors.white70)),
            leading: Icon(Icons.home, color: Colors.white60),
          ),
          ListTile(
            title: Text("Length Converter".toUpperCase(),
                style: TextStyle(
                    color: Colors.white38, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            title: Text("Distance", style: TextStyle(color: Colors.white70)),
            leading: Icon(Icons.home, color: Colors.white60),
          ),
          ListTile(
            title: Text("Area", style: TextStyle(color: Colors.white70)),
            leading: Icon(Icons.home, color: Colors.white60),
          ),
          ListTile(
            title: Text("Temperature", style: TextStyle(color: Colors.white70)),
            leading: Icon(Icons.home, color: Colors.white60),
          ),
          ListTile(
            title: Text("Currency", style: TextStyle(color: Colors.white70)),
            leading: Icon(Icons.home, color: Colors.white60),
          ),
          ListTile(
            title: Text("Unit", style: TextStyle(color: Colors.white70)),
            leading: Icon(Icons.home, color: Colors.white60),
          ),
          ListTile(
            title: Text("Speed", style: TextStyle(color: Colors.white70)),
            leading: Icon(Icons.home, color: Colors.white60),
          ),
          ListTile(
            title: Text("Time", style: TextStyle(color: Colors.white70)),
            leading: Icon(Icons.home, color: Colors.white60),
          ),
          ListTile(
            title: Text("Mass", style: TextStyle(color: Colors.white70)),
            leading: Icon(Icons.home, color: Colors.white60),
          ),
        ],
      );
}

Column initDrawerSetting(context) => new Column(
      children: <Widget>[
        ListTile(
          title: Text("Settings",
              style: TextStyle(color: Colors.white60, fontSize: 14.0)),
          dense: true,
        ),
        ListTile(
          title: Text("About",
              style: TextStyle(color: Colors.white60, fontSize: 14.0)),
          dense: true,
        ),
        ListTile(
          title: Text("Terms of Service",
              style: TextStyle(color: Colors.white60, fontSize: 14.0)),
          dense: true,
        ),
      ],
    );

class ThemeSwitch extends StatefulWidget {
  createState() => ThemeSwitchState();
}

class ThemeSwitchState extends State<ThemeSwitch> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(48, 19, 70, 1),
        padding: EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 10.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              'Dark Mode',
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            Switch(
              activeColor: Colors.pink.shade700,
              activeTrackColor: Colors.pinkAccent.shade100,
              inactiveThumbColor: Colors.grey.shade600,
              inactiveTrackColor: Colors.grey.shade200,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
              value: isSwitched,
            )
          ],
        ));
  }
}
