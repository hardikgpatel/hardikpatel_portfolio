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
      body:
          /*Column(
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
      )*/
          Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            padding: EdgeInsets.all(30.w),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/hardik.jpg'))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Hi,I\'m Hardik Patel!',
                  style: GoogleFonts.josefinSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 45.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Mobile Developer',
                  style: GoogleFonts.josefinSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 25.sp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                StyleGuide.primaryColor,
                StyleGuide.secondaryColor,
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
