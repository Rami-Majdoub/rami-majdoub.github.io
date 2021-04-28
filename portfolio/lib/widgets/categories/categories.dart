import 'package:flutter/material.dart';

const _categories = [
  {
    'name': 'Websites',
    'widget': null,
  },
  {
    'name': 'Mobile games',
    'widget': null,
  },
  {
    'name': 'Desktop apps',
    'widget': null,
  },
];

class Categories extends StatelessWidget {
  const Categories({Key key}) : super(key: key);

  Widget category(index){
    return Padding(
      padding: EdgeInsets.all(10),
      child: 
        Container(
          padding: EdgeInsets.all(20),
          decoration: new BoxDecoration(
            color: Colors.amberAccent,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(children: [
            Text(
              _categories[index]["name"],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
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
          title: Text('projects'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: 
          Container(
          child: ListView.builder(
            itemCount: _categories.length,
            itemBuilder: (BuildContext context, int index) { 
              return category(index);
            },
          ),
        ),
      ),
    );
  }
}