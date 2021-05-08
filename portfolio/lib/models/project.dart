import 'package:portfolio/models/technologie.dart';

class Project{
  String title;
  String period;
  String liveProject;
  String desc;
  String src;
  String appType;
  List<Technologie> technologies;
  Project({
    this.title,
    this.period,
    this.desc,
    this.liveProject,
    this.src,
    this.appType,
    this.technologies,
  });
}