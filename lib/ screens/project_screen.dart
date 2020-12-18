import 'package:flutter/material.dart';
import 'package:hardikpatel/model/project_model.dart';
import 'package:hardikpatel/widgets/project_widget.dart';
import 'package:hardikpatel/widgets/responsive_widget.dart';

class ProjectScreen extends StatefulWidget {
  @override
  _ProjectScreenState createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  List<ProjectModel> projects = [
    ProjectModel(
      name: 'RoboRewards',
      image:
          'https://play-lh.googleusercontent.com/qUM4cPj4Z_vGdh7XVvn7S_GbvsywHjfI6uQUg5UBlUHKCXtMZoAddA6w972ufA3Fywo=s180-rw',
      description:
          'Robo Rewards is reward based system, i have developed tab app for business and mobile app for all users in Native Android. Main feature of mobile app is to connecting with beacons and grand reward points. After converted mobile app into React-Native and tab app to flutter',
      link: 'https://play.google.com/store/apps/details?id=com.app.roborewards',
    ),
    ProjectModel(
      name: 'FanMe',
      image:
          'https://le-cdn.website-editor.net/9e6914dd1a104be6b3e385a12340dff3/dms3rep/multi/opt/logo+sin+fondo+corto-2880w.png',
      description:
          'FanMe is social media based app, in which fan\'s can checkout the image/video (post), news, participate into contest, and share memory with other fan\'s It is flutter based app.',
      link: 'https://www.fanme.eu',
    ),
    ProjectModel(
      name: 'UBMe',
      image:
          'https://play-lh.googleusercontent.com/1gZTLY0T2MTmeXxROeBsb-w_hC_kFiDyi1-jTzsJj6U72XRcJQncUnd-xG0pWr66_Q=s180-rw',
      description:
          'UBMe is social media based application, i have worked for Android app, main feature is sound emoji, connect with nearby locations',
      link: 'https://play.google.com/store/apps/details?id=com.UBMe',
    ),
    ProjectModel(
      name: 'LogMeOnce',
      image:
          'https://play-lh.googleusercontent.com/vTc4yQpQoFAOPfY2UwjbKotr_pv8eWiHpT7NdoHP5QDvRbWGSIIRAwMr-w0Hrx-r7g=s180-rw',
      description:
          'LogMeOnce is a password manager, vault, browser app, It has password less access with biometrics and other security, I have worked for password less access, mugshot, security browser, and password generator',
      link: 'https://play.google.com/store/apps/details?id=log.me.once',
    ),
    ProjectModel(
      name: 'Hello Crowd',
      image:
          'https://play-lh.googleusercontent.com/lC8DtbHvAe861wQ4eTX678VzWCsz4xUp4CNuiFE5wGdYOREQpJHm73ApRlw6WhEZxA=s180-rw',
      description:
          'It is event based application, user can book the seets for session, track event and event details, with live data using Firebase Realtime database',
      link: 'https://play.google.com/store/apps/details?id=com.hellocrowd.container',
    ),
    ProjectModel(
      name: 'Dealer Peak',
      image:
          'https://play-lh.googleusercontent.com/ObMd8bG4OCLmhSKr8maz-sSyIUtH8Z5RrJBRXpR-mWB_UZxBLaCPL3cn4gWkXZGOqa3b=s180-rw',
      description:
          'It is CRM based application for car showroom',
      link: 'https://play.google.com/store/apps/details?id=com.plus.dealerpeak.production',
    ),
    ProjectModel(
      name: 'Rastrack',
      image:
      'https://play-lh.googleusercontent.com/RGgsCNOV4HTG_SnH2kin-k6PacHGbkoHGRWY4ZVqqfSAHA74myRehIniXXNwxEXqaAc=s180-rw',
      description:
      'Rastrack is based on tracking driver while delivering package it is used by salse team, assistant or more',
      link: 'https://play.google.com/store/apps/details?id=com.RastrackCRT',
    ),
    ProjectModel(
      name: 'Tender watch',
      image:
      'https://lh3.googleusercontent.com/proxy/Griw81a7m9MvPMk4KRtDJehWL9FE9mGp6bjixMZ-rjwkdphCXA0bx_j_0vjkwh6O9-cylWMRqjhHHkygqROps8N4wKS5F1294o1ud_OfTQJWu5kDjzZ6ucm7RKfzL2Kuugi-FfWt',
      description:
      'Tender Watch is tansania based project, it is for contractor, contractor can check the tender and contact for the same, also from client side they can rate the contractors and check intrested contractors, based on subscriptions, I have worked for Android app',
      link: '',
    ),
    ProjectModel(
      name: 'Vuforia',
      image:
      'https://lh3.googleusercontent.com/proxy/Griw81a7m9MvPMk4KRtDJehWL9FE9mGp6bjixMZ-rjwkdphCXA0bx_j_0vjkwh6O9-cylWMRqjhHHkygqROps8N4wKS5F1294o1ud_OfTQJWu5kDjzZ6ucm7RKfzL2Kuugi-FfWt',
      description:
      'Vuforia is AR based application i have worked for maintanance and adding small features for d tact ads from images and extract information from image',
      link: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ResponsiveWidget(
        largeScreen: GridView.count(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
          crossAxisCount: 3,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.3),
          children: List.generate(
            projects.length,
            (index) => ProjectWidget(projects[index], 0),
          ),
        ),
        mediumScreen: GridView.count(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.3),
            children: List.generate(
              projects.length,
                  (index) => ProjectWidget(projects[index], 0),
            ),
        ),
        smallScreen: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) => ProjectWidget(
            projects[index],
            (index == projects.length - 1 ? 16.0 : 0),
          ),
        ),
      ),
    );
  }
}
