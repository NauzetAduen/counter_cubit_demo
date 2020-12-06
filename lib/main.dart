import 'package:counter_cubit_demo/ui/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Counters and cubits',
        theme: ThemeData(
            primarySwatch: Colors.indigo,
            accentColor: Colors.redAccent,
            disabledColor: Colors.grey),
        home: LandingPage());
  }
}
