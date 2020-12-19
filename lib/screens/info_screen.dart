import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hardikpatel/model/experience_model.dart';
import 'package:hardikpatel/widgets/responsive_widget.dart';
import 'package:hardikpatel/widgets/theme_inherited_widget.dart';
import 'package:intl/intl.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  List<ExperienceModel> _exp = [
    ExperienceModel(
      companyName: 'Suvya Web',
      description: 'I have worked as Mobile App Developer and team lead',
      startDate: DateTime(2018, 12, 14),
      endDate: null,
    ),
    ExperienceModel(
      companyName: 'LaNet Team Software Solutions PTV. LTD.',
      description: 'I have worked as Mobile App Developer',
      startDate: DateTime(2017, 12, 1),
      endDate: DateTime(2019, 05, 31),
    ),
  ];

  List<ExperienceModel> _edu = [
    ExperienceModel(
      companyName: 'MCA',
      description: 'Uka Tarsadia University',
      startDate: DateTime(2015, 08, 1),
      endDate: DateTime(2018, 05, 1),
      marks: '87',
    ),
    ExperienceModel(
      companyName: 'BCA',
      description: 'Veer Narmad South Gujarat University',
      startDate: DateTime(2012, 07, 15),
      endDate: DateTime(2015, 05, 1),
      marks: '70',
    ),
    ExperienceModel(
      companyName: 'HSC',
      description: 'Gujarat Secondary and Higher Secondary Education Board',
      startDate: DateTime(2010, 08, 1),
      endDate: DateTime(2012, 03, 20),
      marks: '57',
    ),
    ExperienceModel(
      companyName: 'SSC',
      description: 'Gujarat Secondary and Higher Secondary Education Board',
      startDate: DateTime(2015, 08, 1),
      endDate: DateTime(2010, 03, 28),
      marks: '68',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ResponsiveWidget(
        largeScreen: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(child: content()),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ),
        smallScreen: SingleChildScrollView(child: content()),
      ),
    );
  }

  Widget content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Experience (Years)',
          textScaleFactor: 3,
        ),
        ListView.builder(
          itemCount: _exp.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => experienceItem(_exp[index]),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          'Education',
          textScaleFactor: 3,
        ),
        ListView.builder(
          itemCount: _edu.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => experienceItem(_edu[index]),
        ),
      ],
    );
  }

  _getDiff(DateTime start, DateTime end) {
    final difference = (end.difference(start).inDays / 365).toStringAsFixed(1);
    return difference;
  }

  Widget experienceItem(ExperienceModel experienceModel) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 60.0, bottom: 20),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    experienceModel.companyName,
                    textScaleFactor: 2,
                  ),
                  SizedBox(height: 5,),
                  Text(
                    experienceModel.description,
                    textScaleFactor: 1.5,
                    style: Theme.of(context).textTheme.caption,
                  ),
                  SizedBox(height: 5,),
                  Text(
                    experienceModel.marks!=null ? '${DateFormat('yyyy/MM/dd').format(experienceModel.endDate)}' :
                    '${DateFormat('yyyy/MM/dd').format(experienceModel.startDate)} - ${experienceModel.endDate != null ? DateFormat('yyyy/MM/dd').format(experienceModel.endDate) : 'Present'}',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          bottom: 0.0,
          left: 29.0,
          child: Container(
            height: double.infinity,
            width: 2.0,
            color: Theme.of(context).accentColor,
          ),
        ),
        Positioned(
          top: 15,
          //bottom: 0,
          left: 10.0,
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ThemeSwitcher.of(context).isDarkModeOn
                  ? Colors.black
                  : Colors.white,
            ),
            child: Container(
              margin: EdgeInsets.all(5.0),
              height: 30.0,
              width: 30.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  experienceModel.marks!=null
                      ? experienceModel.marks
                      : '${_getDiff(experienceModel.startDate, experienceModel.endDate ?? DateTime.now())}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
