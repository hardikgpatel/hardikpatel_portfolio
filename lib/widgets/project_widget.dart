import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:hardikpatel/model/project_model.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectModel _project;
  final double _bottomPadding;

  ProjectWidget(this._project, this._bottomPadding);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, _bottomPadding),
      child: InkWell(
        onTap: onProjectClick,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                flex: 30,
                child: Center(
                  child: Image.network(
                    _project.image!,
                    width: width * .25,
                    height: width * .25,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 70,
                child: Container(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Column(
                    //direction: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _project.name!,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      Text(
                        _project.description!,
                        textScaleFactor: 1.2,
                        style: Theme.of(context).textTheme.caption,
                        maxLines: 5,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onProjectClick() {
    if (_project.link != null && _project.link!.isNotEmpty)
      html.window.open(_project.link!, 'Hardik Patel');
  }
}
