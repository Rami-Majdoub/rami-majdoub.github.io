import 'package:flutter/material.dart';
import 'package:portfolio/widgets/common/dark_theme/dark_theme_switcher.dart';

class DarkThemeSwitcherContainer extends StatelessWidget {
  const DarkThemeSwitcherContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12.0,
        ),
        child: DarkThemeSwitcher(),
      )
    );
  }
}