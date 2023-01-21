import 'package:flutter/material.dart';
import 'package:portfolio/models/experience.dart';
import 'package:portfolio/models/technologie.dart';
import 'package:portfolio/widgets/common/dark_theme/dark_theme_switcher_container.dart';

final experiences = [
  Experience(
    title: 'Web developer intern',
    entreprise: 'Tildah',
    period: 'Aug 2020 - Sep 2020',
    desc: """Coded a scenario to update the quantity of multiple products in the inventory for Majenna (Majenna is a store management web application hosted at www.majenna.com).
Covered all edge cases to ensure optimal performance.""",
    technologies: [
      javaScript,
      mongo,
      git,
    ],
  ),
  Experience(
    title: 'Machine learning intern',
    entreprise: 'Faculty of Science, Monastir',
    period: 'Feb 2019 - Aug 2019',
    desc: """Created a website for non-professional machine learning users to create a multi-label model, test its performance, and get new data labels.""",
    technologies: [
      angular,
      python,
      flask,
      scikit,
      mlScikit,
    ],
  )
];

class Experiences extends StatelessWidget {
  const Experiences({Key key}) : super(key: key);

  Widget _getItemWidget(final int index){
    final experience = experiences[index];

    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                experience.title + " | " + experience.entreprise,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                experience.period,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                experience.desc,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              if(experience.technologies != null && experience.technologies.length > 0)
                Container(
                  height: 45,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 8, right: 8),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: experience.technologies?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      return experience.technologies[index].getChip();
                    },
                  ),
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
        title:  Text("Experience"),
        actions: <Widget>[DarkThemeSwitcherContainer()],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child:Container(
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
