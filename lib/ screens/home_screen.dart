import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hardikpatel/%20screens/about_screen.dart';
import 'package:hardikpatel/config/assets.dart';
import 'package:hardikpatel/utils/style_guid.dart';
import 'package:hardikpatel/widgets/theme_inherited_widget.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTabIndex = 0;

  static List<Widget> tabWidgets = <Widget>[
    AboutScreen(),
    AboutScreen(),
    AboutScreen(),
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: ThemeSwitcher.of(context).isDarkModeOn?Icon(Icons.wb_sunny):Image.asset(Assets.moon,height: 20,width: 20,),
            onPressed: ()=> ThemeSwitcher.of(context).switchDarkMode(),
          )
        ],
      ),
      body: Center(
        child: tabWidgets[_selectedTabIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            title: Text('Me'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            title: Text('Education'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share_outlined),
            title: Text('Projects'),
          ),
        ],
        currentIndex: _selectedTabIndex,
        onTap: (index)=> setState(() => _selectedTabIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}
