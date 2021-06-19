import 'package:flutter/material.dart';

class Technologie{
  String name;
  Color color;
  Color fontColor;
  Technologie({this.name, this.color, this.fontColor = Colors.white});

  Widget getChip(){
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 5),
      child: Chip( 
        backgroundColor: this.color,
        label: Text(
          this.name,
          style: TextStyle(
            color: this.fontColor,
          ),
        ),
      ),
    );
  }
}

final java = Technologie(name: 'Java', color: const Color(0xffb07219));

final javaScript = Technologie(name: 'JavaScript', color: const Color(0xfff1e05a), fontColor: Colors.black);
final angular = Technologie(name: 'Angular', color: const Color(0xffdc2b3a)); // ts: 2b7489
final mongo = Technologie(name: 'MongoDB', color: const Color(0xff27aa43));
final express = Technologie(name: 'Express', color: const Color(0xff31312f));

final php = Technologie(name: 'PHP', color: const Color(0xff4F5D95));//4F5D95
final laravel = Technologie(name: 'Laravel', color: Colors.red);
final symfony = Technologie(name: 'Symfony', color: Colors.red);

final python = Technologie(name: 'Python', color: const Color(0xff3572A5));
final flask = Technologie(name: 'Flask', color: Colors.red);
final scikit = Technologie(name: 'Scikit', color: Colors.red);
final mlScikit = Technologie(name: 'Scikit Multi-learn', color: Colors.red);

final visualBasic = Technologie(name: 'Visual Basic', color: const Color(0xff945db7));
final batchfile = Technologie(name: 'Batchfile', color: const Color(0xffC1F12E), fontColor: Colors.black);

final git = Technologie(name: 'Git', color: Colors.red);