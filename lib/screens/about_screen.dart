import 'package:flutter/material.dart';
import 'package:hardikpatel/config/assets.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:hardikpatel/config/constant.dart';
import 'package:hardikpatel/stars/stars.dart';
import 'package:hardikpatel/widgets/responsive_widget.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stars(),
        SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0, top: MediaQuery.of(context).size.height*0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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
                    style: TextStyle(color: Colors.white),
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
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                        IconButton(
                        icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.github),
                        ),
                        onPressed: () =>
                            html.window.open(Constants.PROFILE_GITHUB, 'Github'),
                      ),
                      IconButton(
                        icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.twitter),
                        ),
                        onPressed: () =>
                            html.window.open(Constants.PROFILE_TWITTER, 'Twitter'),
                      ),
                      IconButton(
                        icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.instagram),),
                        onPressed: () => html.window
                            .open(Constants.PROFILE_INSTAGRAM, 'Instagram'),
                      ),
                      IconButton(
                        icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.facebook),),
                        onPressed: () => html.window
                            .open(Constants.PROFILE_FACEBOOK, 'Facebook'),
                      ),
                      IconButton(
                        icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.linkedin),),
                        onPressed: () => html.window
                            .open(Constants.PROFILE_LINKEDIN, 'LinkedIn'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
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
            color: Colors.white70,
            size: 20,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            'hardikghanshyampatel@gmail.com',
            textScaleFactor: 1.5,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, fontSize: 12),
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
            color: Colors.white70,
            size: 20,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            '823-873-0884',
            textScaleFactor: 1.5,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
