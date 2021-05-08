import 'package:portfolio/models/technologie.dart';

class Experience{
  String title;
  String period;
  String desc;
  List<Technologie> technologies;

  Experience({
    this.title,
    this.period,
    this.desc,
    this.technologies,
  });
}