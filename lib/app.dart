import 'package:flutter/material.dart';
import 'package:second_app/views/arithmetic_view.dart';
import 'package:second_app/views/dashboard_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboardView(),
    );
  }
}
