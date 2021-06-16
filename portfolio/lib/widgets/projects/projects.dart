import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/models/technologie.dart';

final projects = [
  Project(
    title: 'My Restaurant',
    period: 'Jan 2020 - Feb 2021',
    desc: """A restaurant management app.
Running a restaurant can be exhausting and nerve-racking.
This is an app to help restaurants organize and keep track of the customer's orders.

* Menu is the list of products that can be served.
  can be customized by creating, editing, and deleting their own products.
* Tables are a representation of the actual tables.
  shows the list of unpaid bills associated with each table.
* Bills are the customer orders.
""",
    src: 'https://github.com/Rami-Majdoub/my-restaurant',
    liveProject: 'http://radiant-peak-84965.herokuapp.com/',
    appType: 'Web Application',
    technologies: [
      php,
      laravel,
    ],
  ),
  Project(
    title: 'Blow Bubble',
    period: 'Jan 2019',
    desc: """A simple game in javascript using posenet.
This game is made to show the power of AI and its ability to locate the Humain body parts (hands, legs, face...).
The camera capture a video image which gets processed by the model.
A JSON object is returned containing the body part names (as keys) and their position (as values) on the image.
In this project, I used the hand position for the controls.

How To play?
Move your hands to blow up the bubbles.
You lose if you miss 10 of them.""",
    src: 'https://github.com/Rami-Majdoub/Blow-Bubble',
    liveProject: 'https://Rami-Majdoub.github.io/Blow-Bubble',
    appType: 'P5js Game',
    technologies: [
      javaScript
    ],
  ),
  Project(
    title: 'Beat The Beat',
    period: 'Sep 2019 - Oct 2019',
    desc: """An android game with multiple difficulty choices.
It contains 500 levels that are 2.3MB.""",
    src: null,
    liveProject: 'https://play.google.com/store/apps/details?id=com.ramimajdoub.beat_the_beat',
    appType: 'Android Application',
    technologies: [
      java
    ],
  ),
  Project(
    title: 'Smash Cars',
    period: 'Dec 2017 - Mar 2018',
    desc: 'Created a native game in java using the basic objects Canvas, Paint, Etc...',
    src: null,
    liveProject: 'https://play.google.com/store/apps/details?id=com.ramimajdoub.smashcars',
    appType: 'Android Application',
    technologies: [
      java
    ],
  ),
  Project(
    title: 'Deal OR NoDeal',
    period: '-',
    desc: """A game written as a windows application inspired by the Facebook game 'Deal OR NoDeal' and the television game show 'Dlilek Mlak'.
Used the 'PictureBox' and the 'Label' components in the user interface to represent all the objects. Cases('sandouk' in 'Dlilek Mlak') are represented as PictureBoxes and the texts(case values, dealer proposition...) with Labels. Used also the 'Timer' component to add animation to the withdrawn case value.

The game had many UI/UX problems, these are some of them:
- when the player chooses to open a case(click on the case image) the case remains visible but the value inside it is shown on top of it.
- the dealer offers is represented as a text on top of the screen and if the player chooses to accept it he clicks on it, else he is allowed to keep choosing more cases to open.

Some of the new things I added:
- Every game cost 100.
- The player can spin the wheel once every 24 hours.
""",
    src: null,
    liveProject: 'https://github.com/Rami-Majdoub/Deal-OR-NoDeal',
    appType: 'Windows Application',
    technologies: [
      visualBasic
    ],
  ),
];

class Projects extends StatelessWidget {
  const Projects({Key key}) : super(key: key);

  Widget _getItemWidget(final int index){
    final project = projects[index];

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
              project.title + ' | ' + project.appType,
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
            Row(
              children: [
                if(project.liveProject != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 8),
                    child: OutlinedButton(
                      onPressed: () { },
                      child: Text('Try it'),
                    ),
                  ),

                if(project.src != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 8),
                    child: OutlinedButton(
                      onPressed: () {  },
                      child: Text('Source code'),
                ),
                  ),
              ],
            ),
            if(project.technologies != null && project.technologies.length > 0)
            Container(
              height: 40,
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
            // Row(
            //   children: 
            //   (project.technologies == null || project.technologies.length == 0) ?
            //     []
            //     : project.technologies?.map((e) => e.getChip())?.toList(),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Projects"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: 
          Container(
          child: ListView.builder(
            itemCount: projects.length,
            itemBuilder: (BuildContext context, int index) { 
              return _getItemWidget(index);
            },
          ),
        ),
      ),
    );
  }
}