import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hardikpatel/utils/style_guid.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(1920, 1080), allowFontScaling: true);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                StyleGuide.primaryColor,
                StyleGuide.secondaryColor,
              ]),
            ),
            child: Row(
              children: [
                Text(
                  'Hardik Patel',
                  style: GoogleFonts.josefinSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 45.sp,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
