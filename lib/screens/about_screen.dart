import 'package:flutter/material.dart';
import 'package:hardikpatel/config/assets.dart';
import 'dart:html' as html;
import 'package:hardikpatel/config/constant.dart';
import 'package:hardikpatel/widgets/responsive_widget.dart';

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
              ResponsiveWidget(
                largeScreen: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    getEmail(context),
                    SizedBox(
                      width: 20.0,
                    ),
                    getMobile(context),
                  ],
                ),
                smallScreen: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    getEmail(context),
                    SizedBox(
                      height: 10.0,
                    ),
                    getMobile(context),
                  ],
                ),
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
                    onPressed: () =>
                        html.window.open(Constants.PROFILE_GITHUB, 'Github'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(Assets.twitter),
                    ),
                    label: Text('Twitter'),
                    onPressed: () =>
                        html.window.open(Constants.PROFILE_TWITTER, 'Twitter'),
                  ),
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
                        .open(Constants.PROFILE_INSTAGRAM, 'Instagram'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.facebook)),
                    label: Text('Facebook'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_FACEBOOK, 'Facebook'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.linkedin)),
                    label: Text('Linkedin'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_LINKEDIN, 'LinkedIn'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getEmail(BuildContext context) {
    return GestureDetector(
      onTap: () {
        html.window
            .open('mailto:hardikghanshyampatel@gmail.com,hardikpatel0884@gmail.com', 'Email');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.email_outlined,
            color: Theme.of(context).textTheme.caption.color,
            size: 20,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            'hardikghanshyampatel@gmail.com',
            textScaleFactor: 1.5,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }

  Widget getMobile(BuildContext context) {
    return GestureDetector(
      onTap: () {
        html.window.open('tel:+918238730884', 'Email');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.phone_outlined,
            color: Theme.of(context).textTheme.caption.color,
            size: 20,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            '823-873-0884',
            textScaleFactor: 1.5,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
