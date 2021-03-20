import 'package:flutter/material.dart';
import 'package:hardikpatel/screens/about_screen.dart';
import 'package:hardikpatel/screens/info_screen.dart';
import 'package:hardikpatel/screens/project_screen.dart';
import 'package:hardikpatel/config/assets.dart';
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Stars(),
          Center(
            child: tabWidgets[_selectedTabIndex],
          ),
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              icon: ThemeSwitcher.of(context).isDarkModeOn
                  ? Icon(Icons.wb_sunny)
                  : Image.asset(
                      Assets.moon,
                      height: 20,
                      width: 20,
                      color: Colors.white,
                    ),
              onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'Info',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.screen_share_outlined), label: 'Projects'),
        ],
        currentIndex: _selectedTabIndex,
        onTap: (index) => setState(() => _selectedTabIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}
