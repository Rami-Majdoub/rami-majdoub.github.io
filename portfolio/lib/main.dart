import 'package:flutter/material.dart';

import 'package:provider/provider.dart'; 

import 'package:portfolio/widgets/common/dark_theme/dark_theme_provider.dart';
import 'package:portfolio/widgets/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) {
          return themeChangeProvider;
        },
        child: Consumer<DarkThemeProvider>(
          builder: (BuildContext context, value, Widget child) {
            return MaterialApp(
              title: 'Rami Majdoub',
              debugShowCheckedModeBanner: false,
              themeMode: themeChangeProvider.darkTheme? ThemeMode.dark: ThemeMode.light,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              darkTheme: ThemeData.dark(),
              home: MyHomePage(),
            );
          }
        ),
      );
  }
}