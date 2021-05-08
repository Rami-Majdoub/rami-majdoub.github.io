import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/models/technologie.dart';

final projects = [
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