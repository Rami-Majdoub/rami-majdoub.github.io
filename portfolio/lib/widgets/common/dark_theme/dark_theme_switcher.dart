import 'package:flutter/material.dart';

import 'package:provider/provider.dart'; 

import 'dark_theme_provider.dart';

class DarkThemeSwitcher extends StatefulWidget {
  DarkThemeSwitcher({Key key}) : super(key: key);

  @override
  _DarkThemeSwitcherState createState() => _DarkThemeSwitcherState();
}

class _DarkThemeSwitcherState extends State<DarkThemeSwitcher> {

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
  
    return Container(
      child: IconButton(
        icon: Icon(
          themeChange.darkTheme?
          Icons.wb_sunny // bright
          :Icons.brightness_3,// dark Icon
        ), onPressed: () { 
          setState(() {
            themeChange.switchTheme();
          });
        },
        tooltip: "Switch theme",
      ),
    );
  }
}