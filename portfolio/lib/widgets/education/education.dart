import 'dart:ui';

import 'package:flutter/material.dart';

const _items = [
  {
    "school": "Higher Institute of Applied Science and Technology, Sousse",
    "period": "Sep 2019 - Present",
    "certificate": "Engineer's degree, Computer Science",
  },
  {
    "school": "Faculty of Science, Monastir",
    "period": "Sep 2016 - Jun 2019",
    "certificate": "Bachelor's degree, Computer Science",
  },
];

class Education extends StatelessWidget {
  const Education({Key key}) : super(key: key);

  Widget _getItemWidget(final int index){
    final _item = _items[index];

    return Padding(
      padding: EdgeInsets.all(10),
      child: 
        Container(
          padding: EdgeInsets.all(20),
          decoration: new BoxDecoration(
            color: Colors.blueGrey[100],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
						crossAxisAlignment: CrossAxisAlignment.start, // horizontally
            children: [
            Text(
              _item["certificate"],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              _item["period"],
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              _item["school"],
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Education"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: 
          Container(
          child: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (BuildContext context, int index) { 
              return _getItemWidget(index);
            },
          ),
        ),
      ),
    );
  }
}