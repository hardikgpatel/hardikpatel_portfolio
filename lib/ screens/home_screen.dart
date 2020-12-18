import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hardikpatel/%20screens/about_screen.dart';
import 'package:hardikpatel/%20screens/contact_screen.dart';
import 'package:hardikpatel/%20screens/info_screen.dart';
import 'package:hardikpatel/%20screens/project_screen.dart';
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
    InfoScreen(),
    ProjectScreen(),
    ContactScreen(),
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
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            title: Text('Me'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            title: Text('Info'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.screen_share_outlined),
            title: Text('Projects'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_outlined),
            title: Text('Contact'),
          ),
        ],
        currentIndex: _selectedTabIndex,
        onTap: (index)=> setState(() => _selectedTabIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}
