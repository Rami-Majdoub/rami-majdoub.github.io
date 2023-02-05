import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/widgets/common/dark_theme/dark_theme_switcher_container.dart';

const _items = [
  {
    "school": "Higher Institute of Applied Science and Technology, Sousse",
    "period": "Sep 2019 - Dec 2022",
    "certificate": "Engineering degree, Computer Science",
  },
  {
    "school": "Faculty of Science, Monastir",
    "period": "Sep 2016 - Jun 2019",
    "certificate": "Bachelor's degree, Computer Science",
  },
];

class Education extends StatelessWidget {
  const Education({Key key}) : super(key: key);

  Widget _getItemWidget(final int index) {
    final _item = _items[index];

    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // horizontally
            children: [
              Text(
                _item["certificate"],
                style: TextStyle(fontSize: 20),
              ),
              Text(
                _item["period"],
                style: TextStyle(fontSize: 15),
              ),
              Text(
                _item["school"],
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
        actions: <Widget>[DarkThemeSwitcherContainer()],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 720,
            ),
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (BuildContext context, int index) {
                return _getItemWidget(index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
