import 'package:flutter/material.dart';
import 'package:hardikpatel/utils/router.dart' as router;
import 'package:hardikpatel/config/themes.dart';
import 'package:hardikpatel/widgets/theme_inherited_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: HardikPatel(),
    );
  }
}

class HardikPatel extends StatefulWidget {
  @override
  _HardikPatelState createState() => _HardikPatelState();
}

class _HardikPatelState extends State<HardikPatel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hardik Patel',
      theme: ThemeSwitcher.of(context).isDarkModeOn
          ? darkTheme(context)
          : lightTheme(context),
      onGenerateRoute: router.Router.generateRoute,
    );
  }
}
