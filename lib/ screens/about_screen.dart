import 'package:flutter/material.dart';
import 'package:hardikpatel/config/assets.dart';
import 'dart:html' as html;
import 'package:hardikpatel/config/constant.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hey! I am Hardik Patel',
                textScaleFactor: 2.8,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'I\'m a Mobile Developer with Skills of Android, Flutter, React-Native.\nLike Photography & Traveling',
                textScaleFactor: 1.5,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(Assets.github),
                    ),
                    label: Text('Github'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_GITHUB, 'Hardik Patel'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(Assets.twitter),
                    ),
                    label: Text('Twitter'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_TWITTER, 'HardikPatel'),
                  ),
                  /*FlatButton.icon(
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(ThemeSwitcher.of(context).isDarkModeOn
                          ? Assets.medium
                          : Assets.medium_light),
                    ),
                    label: Text('Medium'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_MEDIUM, 'HardikPatel'),
                  )*/
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.instagram)),
                    label: Text('Instagram'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_INSTAGRAM, 'HardikPatel'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.facebook)),
                    label: Text('Facebook'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_FACEBOOK, 'HardikPatel'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.linkedin)),
                    label: Text('Linkedin'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_LINKEDIN, 'HardikPatel'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
