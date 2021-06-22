import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/models/technologie.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchURL(url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

final projects = [
  Project(
    title: 'Chahriti',
    period: 'Oct 2020 - Present',
    desc: """A budget management application.
This application helps users to:
  - save all expenses.
  - see daily & monthly expenses.
  - group expenses by category.
  - recognize spending habits.
  - estimate upcoming payments.
  - better understanding of the financial state.""",
    src: null,
    liveProject: 'https://chahriti.live',
    appType: 'Web Application',
    technologies: [
      javaScript,
      mongo,
      express,
      angular,
    ],
  ),
  Project(
    title: 'My Restaurant',
    period: 'Jan 2021 - Feb 2021',
    desc: """A restaurant management app.
Running a restaurant can be exhausting and nerve-racking.
This is an app to help restaurants organize and keep track of the customer's orders.

- Menu is the list of products that can be served.
  can be customized by creating, editing, and deleting their own products.
- Tables are a representation of the actual tables.
  shows the list of unpaid bills associated with each table.
- Bills are the customer orders.

IMPORTANT: the online version does not work because it is not connected to a database.""",
    src: 'https://github.com/Rami-Majdoub/my-restaurant',
    liveProject: 'http://radiant-peak-84965.herokuapp.com/',
    appType: 'Web Application',
    technologies: [
      php,
      laravel,
    ],
  ),
  Project(
    title: 'Beat The Beat',
    period: 'Sep 2019 - Oct 2019',
    desc: """A cross platform game made with libGDX.
This game has multiple difficulty choices and contains 500 levels that are 2.3MB.""",
    src: null,
    liveProject: 'https://play.google.com/store/apps/details?id=com.ramimajdoub.beat_the_beat',
    appType: 'Android Application',
    technologies: [
      java
    ],
  ),
  Project(
    title: 'Dlilek Mlak',
    period: 'May 2019 - Aug 2019',
    desc: """A cross platform game made with libGDX.""",
    src: null,
    liveProject: 'https://play.google.com/store/apps/details?id=com.ramimajdoub.dlilek_mlak',
    appType: 'Android Application',
    technologies: [
      java
    ],
  ),
  Project(
    title: 'Burst Asteroids',
    period: 'Mar 2019',
    desc: """A cross platform game made with libGDX.""",
    src: null,
    liveProject: 'https://play.google.com/store/apps/details?id=com.ramimajdoub.burstasteroids',
    appType: 'Android Application',
    technologies: [
      java
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
    title: 'BOUNCE UP',
    period: 'Jul 2018',
    desc: """A native android game created using the basic objects Canvas, Paint, etc...
I made this game in 3 days as a challenge.""",
    src: 'https://github.com/Rami-Majdoub/BOUNCE-UP',
    liveProject: 'https://play.google.com/store/apps/details?id=com.ramimajdoub.bounceup',
    appType: 'Android Application',
    technologies: [
      java
    ],
  ),
  Project(
    title: 'Smash Cars',
    period: 'Dec 2017 - Mar 2018',
    desc: 'A native android game created using the basic objects Canvas, Paint, etc...',
    src: null,
    liveProject: 'https://play.google.com/store/apps/details?id=com.ramimajdoub.smashcars',
    appType: 'Android Application',
    technologies: [
      java
    ],
  ),
  Project(
    title: 'Puzzle',
    period: 'Aug 2015',
    desc: """A windows application game.
I have implemented an XML look-a-like file format to save & load the game & the selected images.
The player can choose any image to play with.
The image will be divided into 9 tiles (3 columns * 3 rows).""",
    src: null,
    liveProject: 'https://github.com/Rami-Majdoub/Puzzle',
    appType: 'Windows Application',
    technologies: [
      visualBasic
    ],
  ),
  Project(
    title: 'Car Racing',
    period: 'Jul 2015',
    desc: """A windows application game made with VB.
Control your car and avoid crashing into other cars.
You lose when your car touches another car.
You can use the jump power-up to avoid crashing.
You get 1 jump power up every 20 points.

The demo is a script controlling the car using if statements.""",
    src: null,
    liveProject: 'https://github.com/Rami-Majdoub/Car-Racing',
    appType: 'Windows Application',
    technologies: [
      visualBasic,
    ],
  ),
  Project(
    title: 'TTCach',
    period: 'Jun 2015',
    desc: """A windows application game inspired by the television game show 'TTCash'.""",
    src: null,
    liveProject: 'https://github.com/Rami-Majdoub/TTCach',
    appType: 'Windows Application',
    technologies: [
      visualBasic
    ],
  ),
  Project(
    title: 'Deal OR NoDeal',
    period: 'Jun 2015',
    desc: """A windows application game inspired by the Facebook game 'Deal OR NoDeal' and the television game show 'Dlilek Mlak'.
Used the 'PictureBox' and the 'Label' components in the user interface to represent all the objects. Cases('sandouk' in 'Dlilek Mlak') are represented as PictureBoxes and the texts(case values, dealer proposition...) with Labels. Used also the 'Timer' component to add animation to the withdrawn case value.

The game had many UI/UX problems, these are some of them:
- when the player chooses to open a case(click on the case image) the case remains visible but the value inside it is shown on top of it.
- the dealer offers is represented as a text on top of the screen and if the player chooses to accept it he clicks on it, else he is allowed to keep choosing more cases to open.

Some of the new things I added:
- Every game cost 100.
- The player can spin the wheel once every 24 hours.""",
    src: null,
    liveProject: 'https://github.com/Rami-Majdoub/Deal-OR-NoDeal',
    appType: 'Windows Application',
    technologies: [
      visualBasic
    ],
  ),
  Project(
    title: 'Tic Tac Toe',
    period: 'Nov 2013',
    desc: """A console game written as a Windows Batchfile.
Batchfiles were the easiest solution to get me started.
In the process of making it, I learned how to use echo, set, if and goto statements.""",
    src: 'https://github.com/Rami-Majdoub/tic-tac-toe-bat',
    liveProject: null,
    appType: 'Windows Batch',
    technologies: [
      batchfile,
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
                      onPressed: () {
                        _launchURL(project.liveProject);
                      },
                      child: Text('Try it'),
                    ),
                  ),

                if(project.src != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 8),
                    child: OutlinedButton(
                      onPressed: () {
                        _launchURL(project.src);
                      },
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