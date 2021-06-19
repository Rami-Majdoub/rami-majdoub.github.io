import 'package:portfolio/models/technologie.dart';

class Experience{
  String title;
  String entreprise;
  String period;
  String desc;
  List<Technologie> technologies;

  Experience({
    this.title,
    this.entreprise,
    this.period,
    this.desc,
    this.technologies,
  });
}