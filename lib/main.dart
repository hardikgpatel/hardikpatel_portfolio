import 'package:flutter/material.dart';
import 'package:hardikpatel/utils/router.dart' as router;

void main() {
  runApp(HardikPatel());
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
      onGenerateRoute: router.Router.generateRoute,
    );
  }
}

