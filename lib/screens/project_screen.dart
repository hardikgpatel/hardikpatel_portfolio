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
      name: 'STEMBoard (React-Native)',
      image:
          'data:image/png;base64,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',
      description:
          'Stem Board is google classroom based project for school where teacher can upload assignment and track/check assignment submited by the student, and student can submit assignment by editing into the image as assignment which is uploaded by tutor.',
      link: 'https://stemboard.com/',
    ),
    ProjectModel(
      name: 'Athlet Mentor (React-Native)',
      image:
          'data:image/png;base64,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',
      description:
          'Athelet mentor is coatch and athlet based app where coatch can teach the skill to the athlet via a video call and scheen sharing feature.',
      link: '',
    ),
    ProjectModel(
      name: 'Edumame (React-Native)',
      image:
          'data:image/png;base64,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',
      description:
          'Edumame is edtech platform where tutor and student can register them self, Student can book the session as per tutor availability, Providing Custom timezone feature, user can select their time zone from the app it self and whole app work the users selected timezone.',
      link: 'https://www.eduma.me',
    ),
    ProjectModel(
      name: 'Kaizen (Flutter)',
      image:
          'https://play-lh.googleusercontent.com/fmqXXAHxIW2YcC5W63zcOU_AdwcDE7fvqmGYtoggPpXlz91S8irffM-Wj39d-FcL2F4=s180-rw',
      description:
          'Kaizen is a new-age resource management software that provides a one-stop solution for each aspect of your workday from internal communication to the task feedback system. Kaizen is able to act as a software assistant and increase workplace productivity by streamlining tasks.',
      link:
          'https://play.google.com/store/apps/details?id=com.infobizzs.kaizen',
    ),
    ProjectModel(
      name: 'La benito (React-Native)',
      image:
          'https://play-lh.googleusercontent.com/QBWTLmSrgKN26zHHdnpHWxjqQiS4YlgnOeo5JuT48h2BBk7_mhTl0jP1lOcCp4TtQwMe=s180-rw',
      description:
          'La Benito is a Online food ordering app with order tracking and location based restaurants.',
      link:
          'https://play.google.com/store/apps/details?id=com.redspark.labenito',
    ),
    ProjectModel(
      name: 'OSI (React-Native)',
      image:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQsAAAC9CAMAAACTb6i8AAAAWlBMVEX///9h2vtU2PtT2Pv3/f/7/v/1/f+x6/1p3PuQ5Pxi2vvv+/9v3fvB7/2A4PzY9f7g9/7o+f6o6f2T5PzT9P687v3I8f163/ye5/y37f2b5vyI4vyt6v3k+P5gfH3JAAANJ0lEQVR4nO1daXurKhCuuCbuxmgam///N2+MDDDI1tMseh/eD6c9jRoYZp8Bv748PDw8PDw8PDw8PDw8PDw8PDw8PDw8PDw8no84/svdeZsnzxrJR5GXp4zcURzS+l/uvhbkgTFtnz+4t6I9ERJQ3Cd06H9zc/5d8LsDEk67pkYaBhgk6HLHe+tJIMSCMH3paF+KkzyZB3ecXJa3HhX3BuT08jG/CCpSLDOy8UajpMR86+UtI386vjXzmaf0Y7oxOcmiJYjJ8K7hPxOtoDTDkGDhJ5lei57xlSQMiky4e4/mtWISUUf3ta6/sS4MT2qfI0fiQbKuf0z+dqG8Qq5vncVT0NApEe5VxIM4TxKo/I1SvIJcb/yTHh7oaoi2gwNdfiwLN1EVhCtFGB8EfyJII/ThsNxKutcO/PlI6KRWHN1OnBpkxGt8ywRSdCsZouQ9vnDYLwHldRVD14UgB/36ngfLHBQ3Um1MfuW8bgDTMie1byRYW8JdyY4xjM7K0IfuTUiOxiXMK25wQYom9qdQZyqG5ZLiFQN+HW6UnbWxOmcNUs0XJYLgaGUgoZyzLxeDrmClv0LQk0Xy1R51+hShWC5pnj/gF6IjVsmOuVBkA1eaRmVwWmhRPnm0r8XBZdA8oucCYw43FskyRzObw7jMzJLJ6lfR2818AxW9w/MG+gZkC8PbMhU3TInCGstb1dAGsajCMLJdlxecEsQ+xTbcn1FN6PQc0t8jo4XDakcLLbK/j/B9cKdFw/niaM/9UVrsKiKhtLCvX4v0hTUaj8huaWEdc451Z2ZzKHdMC5uMRJlkUgvbDfuVERstIA0YgAduMyV71J1uNhVqBuQUgzWxZDP3aFPB1zIqww5IMd0XHPwMYiyNUV9rfO5gXwwaUJpc6gGikcfMElAdxgIIddqn5w72xVg0gSkbB3lyMB7MuhKDm0HjkX0Vz6zBNTchIEecOHqNmxK7HG0OdND6ZASrJPFQlgmNXgSuNhJvEaUluAa9GYrTSkGZaklYyfTbA2qzwu+hIIglHypFWj2TWTXKBpHTWWlqpqArZNeKBa1qY0xd8MCaCtgWqLOlXkGY8rHN2zvqO5r7zzxnUauaoZpd1gQgybd2FuK8uYDFOD7aEcJHb9rjJ3fGL02+Xn2bFtooListGLX9+VplwaoLS437ZVl1OfdttHro9/un8yeUYmYyqc/XIiCOVMAUIUFxPdeL/qDMtrd6KnhOcVs+yPBrKkg8UpzKG41+d9eAEdFpZH8kAyIIfeSn5/ZrjMaJ/QU7U53JcDiaJ/SwHHf1mBXjOFZVdf93zO6KddXltsbxMOymuBwPU2AVjLKv2yiSXbE4ivKmH2w3k2Aa/tRt/ybcLkdlx+59tcdTB/87G5/Buhq706gxPyS4bL3aXqoadkmYTT9DG0OcaS8LQRR7D1fidviZslD12HHD8WqSqliiugxgBGvXtkQIZ1hEmg8XhTImx59tao6kU2sJ4ZLMSUJmgJQI9jPRiMr2vI34R6IE/E/wEn+Im4TMoFIitFpQT/Yofw/pNha2llg6SHAYYDosy88Y3yX90K7EaYLHDYdA+jI7n70PeIsDIdUwL9VZKvjRyTj27UKSCxJ+kdDcGQ0VMi6k2IxN6dC4jj90KaE1leq/fq0CjCiwjNEUOPTw5T8Z+tZtpMZbsY2XjELGokBCIs3NijpEtDtgNrljGIXeclJsIPE3CJQIK5SVTUUhOZPVZChmV1OVuaGzX9IVICLIpagrkRof9zY6sdNdyk+L/dsxjU9kxZmUUzCHIGEwlZKvALr2IRaDur9c3JZmbod8PfiWMpKt83nUPZqbwqlOkRRnLPokRG4HpXz10AWTjqsGrjfIRyNYvt1DscWBNzpHfI3RVU0m+QoZtgfgm+Vwv6r9M+42QQyWxCWFsoqcMyG/qMR93d4paVbQRSeBqgrcmPb+3J5N1t+u7Zqg7lYFbIGy+QpSyMSgQkZa+otu3WEz2sdKrawYrNfgsLCVYqJSrxaDqEHBrgJNtMVDtg3nQ/XFwv71MZ4mqgBVgRpIPU7oI4ObBiHwZ7Kh4DAYdzBcRDlARFNKyOqqBt1vEgC27/ETUkIHGBr9yJs4FxSf6nPDiHsOIi2M4XmvNFVvATg/lv0LwpQRA7U6tpCmLF5naU1KVbbqLaCSbKvzCi46YgvTZnc0Gc4Y1kimUHzPW0DHZ91qz2oDIVKxWCliIMvJGcOqFUFKfj+Zv6F1/V5IZknLZSol4SuBMRxKyvTCd0eszrtawI2QOFzufhaB5Y6pX3sqj7YwvTux477DB4IKFIXGJlpgYQCf9Wi3D9NnaEFlxO7ZgPKUItRCRQQK3JQDLoqDfaDtXJZNa08H9ShD6xpw9zJS/3kNZDsT9mdra1ITugrTkzEqxq0Ad7awQ/hjsKnoQiEit4Uak4qt3gHqgpvdTl41lNerMdBC5HGxQmTJTtBGyQ+0MLFBGh3jSJwjclH1yhPJgphjN/vgudNVrwGMMjOJZ4liK9GUnLWxmagjUWBvXHGwTB85T4cptcJQ30UuFTYlOsZAbIHiXJP2TFgG4SPVZhZqZFpH74YXH7FvrWYMpCHBt8gUnyG0QNlPVQZYElwblVA5ynjiUsBZdaIYapanWy/uNCgU9wtgy/K57C+TgPCqdgrp6SgdS1wiN0hhV7E9BWMzseqq8mviK6Pq59qjmZBqTrihYhDemEBgn32QiSExGKRJG1NN4KtHp4p8DJwYd+5c2zLqXMzOD/WDJHeknZCdOWDFAzsrZr6vgENk5AcuasVHOzFioYa3agqhfvrDFEKMLwcw9SGgvfHHk+zP81LRqswOiAT/g4yfbkq5ikXAFA21F2ugV11OML715+7c31aqAHJ2D0usrC1HqViC3MDZnugEPXRsKxUR2h8Pl7i6hazsuKz2uucgRw1iDk1gb0CLThwkB+YEHNEgv8lqNkaglgMuJCAH9UFszdEUMT8AnMgNi/Sx9rXUJgDNKG6nkYLiBCsp9ih95WmBnJMt7dLMD4gahFRlAo4WM6NgVx0SVF9ccTIuY6faJWUlHYy6sQOi5bOKCZkyecmA6116q8A+cD8Sehrl46FXLTAbQK8+r1jISrOo2j54FshwTRupH19sc5dRX6mGSw+pnQFxut1TBp+dGYek7xS7MMi4TUrMaE6Kpn5CitO5fhAEnGpbZxWEH8sRCPX5VCife9iedIhIvgsVc8wvFJi6oXSTEpAQUg7dVGg2TWTp9jrBV2gumq00wqSy1TYajjgqFHfgJwWnbbOEgP6qnII4m2MxVtPpcknvKMty/nG5nKZqLOybkk79HnYVcZxsE+JLD3C8Y29buLklcJ2hC9XoL9vcP6MH7Ku924DsXzYsy2Qg82ZdeOanJ/dLNEK9Ne/TKfuFEEhUCLIp7R82g9bRd7qfnbvQeV12UxY4k+Rx4d0Olw0XCbqNcQOJil+BHkkgx49JXg/fI5owAvtk/B7Wewf2eSa28UgC1nxxHIbyfE4XfJ/Pw8AKSEr92H6qkP430HNR1K4hKyzL9T52FJs6zIAE6rZCdBsgJNX4RJD8kdQg61vRNUru8gAMGlFoWyEmFQOwQF3b+USP2t5EatMZtsOreb/WOr0RHLXOFJWhbWy0c8WSqTDE5qxtk5/lys6t1Pc9UUu9r7MJlwU0MTNr3wY5YmJjqJT3ezSq9GxCU8obKstkWWWoORmzoTfX7sEtweXgPHbi3OxHsrP4jB2jtH7klknfCkYXR4ApiMvXN5Q7zKcfQ/53V5HqkpmyvE+AneFJeLndnLcDZ2sH2T0Oet6vxVnGJ6WbTYj43P8jLeQuT7tD+T+mBd515vDexz0e4OlKC7FNySVHs2O+cND3PEfs0Me9S93pZEdmpAJf2F3rmLhYm43B9ZBivH/V2nCV7DGZ4+CDz5iwHTF0EC/YpQ9OYzOzNszXpVeLVd1lbEaDa2PGuuYU4CVH82vHU0taZJOwnA8+Q3jT21l4bRGZDBEJzWttqDvLAdCzrDWqifCmzFmr5MIWCr3GzVwEaXMozKPuBR2xxCAxJ472ECB4++auTCrrc1VLdsTfukz4u+54B7HuHLVuj6qTH4OgEhLh3Fa030PYdkWuKheCbcHYF+imO8W40ZFYWAs2vD2NKOwxpdXu6uxsS5DUm9wIr+EOjvKsIqETkBylzDHUDPblac2A1AR6fxvqeiSTQg7E7Ykk6AQ/FLq4dlYpeoDt0qaOeNzjnjZN7l/qtB9TqkYHkJ9dveiNglUESXC4XA4jPr6YTFrXI8UXElJU1cjaET5/BOG/oFtFG4IuMEVtuRyyidjXe2QZdGcZEKsTXSsbZmdYXx+5UcSaFuDOYT6Dhhq7ynQirJmdBK5HevfVqrOLWF/IvGWU2HSQym1T0YL2B72xgwR7a+CTMW8Con1pp+HXy3r7nqDBrSp3VUVVI276Yeibf2bvpG2af7/bw8PDw8PDw8PDw8PDw8PDw8PDw8PDw8PDw8MB/wGmOXoiSJHnQgAAAABJRU5ErkJggg==',
      description:
          'OSI is visa consultant service this app helps user to track their application and learn courses.',
      link: '',
    ),
    ProjectModel(
      name: 'Nexnos Life (React-Native)',
      image:
          'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
      description:
          'Nexnos life is a medical based ecommerce application with prescription upload feature',
      link:
          'https://play.google.com/store/apps/details?id=com.fqa.flipkartquizanswer',
    ),
    ProjectModel(
      name: 'Nexnos Life Delivery (Flutter)',
      image:
          'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
      description:
          'Nexnos life is a medical based ecommerce Delivery boy application.',
      link:
          'https://play.google.com/store/apps/details?id=com.fqa.flipkartquizanswer',
    ),
    ProjectModel(
      name: 'RoboRewards (React-Native, Native Android, Flutter)',
      image:
          'https://play-lh.googleusercontent.com/qUM4cPj4Z_vGdh7XVvn7S_GbvsywHjfI6uQUg5UBlUHKCXtMZoAddA6w972ufA3Fywo=s180-rw',
      description:
          'Robo Rewards is reward based system, i have developed tab app for business and mobile app for all users in Native Android. Main feature of mobile app is to connecting with beacons and grand reward points. After converted mobile app into React-Native and tab app to flutter',
      link: 'https://play.google.com/store/apps/details?id=com.app.roborewards',
    ),
    ProjectModel(
      name: 'FanMe (Flutter)',
      image:
          'https://le-cdn.website-editor.net/9e6914dd1a104be6b3e385a12340dff3/dms3rep/multi/opt/logo+sin+fondo+corto-2880w.png',
      description:
          'FanMe is social media based app, in which fan\'s can checkout the image/video (post), news, participate into contest, and share memory with other fan\'s It is flutter based app.',
      link: 'https://www.fanme.eu',
    ),
    ProjectModel(
      name: 'UBMe (Native Android)',
      image:
          'https://play-lh.googleusercontent.com/1gZTLY0T2MTmeXxROeBsb-w_hC_kFiDyi1-jTzsJj6U72XRcJQncUnd-xG0pWr66_Q=s180-rw',
      description:
          'UBMe is social media based application, i have worked for Android app, main feature is sound emoji, connect with nearby locations',
      link: 'https://play.google.com/store/apps/details?id=com.UBMe',
    ),
    ProjectModel(
      name: 'LogMeOnce (Native Android)',
      image:
          'https://play-lh.googleusercontent.com/vTc4yQpQoFAOPfY2UwjbKotr_pv8eWiHpT7NdoHP5QDvRbWGSIIRAwMr-w0Hrx-r7g=s180-rw',
      description:
          'LogMeOnce is a password manager, vault, browser app, It has password less access with biometrics and other security, I have worked for password less access, mugshot, security browser, and password generator',
      link: 'https://play.google.com/store/apps/details?id=log.me.once',
    ),
    ProjectModel(
      name: 'Hello Crowd (Native Android, React-Native)',
      image:
          'https://play-lh.googleusercontent.com/lC8DtbHvAe861wQ4eTX678VzWCsz4xUp4CNuiFE5wGdYOREQpJHm73ApRlw6WhEZxA=s180-rw',
      description:
          'It is event based application, user can book the seets for session, track event and event details, with live data using Firebase Realtime database',
      link:
          'https://play.google.com/store/apps/details?id=com.hellocrowd.container',
    ),
    ProjectModel(
      name: 'Dealer Peak (Android)',
      image:
          'https://play-lh.googleusercontent.com/ObMd8bG4OCLmhSKr8maz-sSyIUtH8Z5RrJBRXpR-mWB_UZxBLaCPL3cn4gWkXZGOqa3b=s180-rw',
      description: 'It is CRM based application for car showroom',
      link:
          'https://play.google.com/store/apps/details?id=com.plus.dealerpeak.production',
    ),
    ProjectModel(
      name: 'Rastrack (Android)',
      image:
          'https://play-lh.googleusercontent.com/RGgsCNOV4HTG_SnH2kin-k6PacHGbkoHGRWY4ZVqqfSAHA74myRehIniXXNwxEXqaAc=s180-rw',
      description:
          'Rastrack is based on tracking driver while delivering package it is used by salse team, assistant or more',
      link: 'https://play.google.com/store/apps/details?id=com.RastrackCRT',
    ),
    ProjectModel(
      name: 'Flipkart Quiz Answers (Flutter)',
      image:
          'https://play-lh.googleusercontent.com/N_mZ5V-HtAbdsYdeEO1ptr_FoLU-Gv75emdi_BrzaWN_g7HbNn1J2qG4CsUGK0WlNsY=s180-rw',
      description:
          'Flipkart quiz offers all the answers of the flipkart quiz where users can see answer a bunch of questions to win exciting prizes.',
      link:
          'https://play.google.com/store/apps/details?id=com.fqa.flipkartquizanswer',
    ),
    ProjectModel(
      name: 'Tender watch (Android)',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Android_logo_2019_%28stacked%29.svg/2346px-Android_logo_2019_%28stacked%29.svg.png',
      description:
          'Tender Watch is tansania based project, it is for contractor, contractor can check the tender and contact for the same, also from client side they can rate the contractors and check intrested contractors, based on subscriptions, I have worked for Android app',
      link: '',
    ),
    ProjectModel(
      name: 'Vuforia (Android)',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Android_logo_2019_%28stacked%29.svg/2346px-Android_logo_2019_%28stacked%29.svg.png',
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
