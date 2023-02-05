import 'package:flutter/material.dart';

import 'package:portfolio/widgets/common/action_button.dart';
import 'package:portfolio/widgets/common/dark_theme/dark_theme_switcher_container.dart';
import 'package:portfolio/widgets/education/education.dart';
import 'package:portfolio/widgets/experiences/experiences.dart';
import 'package:portfolio/widgets/home/dev_image.dart';
import 'package:portfolio/widgets/home/dev_name.dart';
import 'package:portfolio/widgets/home/links.dart';
import 'package:portfolio/widgets/projects/projects.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: DarkThemeSwitcherContainer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
			body: Container(
				child: Center(
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center, // vertically
						crossAxisAlignment: CrossAxisAlignment.center, // horizontally
						children: [
							Column(
                mainAxisAlignment: MainAxisAlignment.center, // vertically
                crossAxisAlignment: CrossAxisAlignment.center, // horizontally
								children: [
									Padding(
										padding: EdgeInsets.all(16.0),
										child: const DevImage(),
									),
									const DevName(),
								],
							),
							Row(
								mainAxisAlignment: MainAxisAlignment.center, // vertically
								crossAxisAlignment: CrossAxisAlignment.center, // horizontally
								children: [
									const Links(),
								],
							),
              Wrap(

                children: [
                  ActionButton(
                    title: "Projects",
                    action: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Projects())
                    ),
                  ),
                  ActionButton(
                    title: "Experience",
                    action: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Experiences())
                    ),
                  ),
                  ActionButton(
                    title: "Education",
                    action: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Education())
                    ),
                  ),
                ],
              ),
						],
					),
				),
      ),
    );
  }
}
