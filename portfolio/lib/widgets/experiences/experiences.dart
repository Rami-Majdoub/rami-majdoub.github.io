import 'package:flutter/material.dart';
import 'package:portfolio/models/experience.dart';
import 'package:portfolio/models/technologie.dart';

final experiences = [
  Experience(
    title: 'Intern',
    period: 'Aug 2020 - Sep 2020',
    desc: """Created a component to add and update product quantities in the inventory for Majenna.
Majenna (majenna.com) is a store management web application.
Used native JavaScript and MongoDB.""",
    technologies: [
      javaScript,
      mongo,
      git,
    ],
  ),
];

class Experiences extends StatelessWidget {
  const Experiences({Key key}) : super(key: key);

  Widget _getItemWidget(final int index){
    final project = experiences[index];

    return Padding(
      padding: EdgeInsets.all(10),
      child:
        Container(
          padding: EdgeInsets.all(20),
          decoration: new BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              project.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              project.period,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              project.desc,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            if(project.technologies != null && project.technologies.length > 0)
            Container(
              height: 45,
              child:
                ListView.builder(
                  padding: const EdgeInsets.only(top: 8, right: 8),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: project.technologies?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                      return project.technologies[index].getChip();
                  },
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
        title:  Text("Experience"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child:
          Container(
          child: ListView.builder(
            itemCount: experiences.length,
            itemBuilder: (BuildContext context, int index) {
              return _getItemWidget(index);
            },
          ),
        ),
      ),
    );
  }
}
