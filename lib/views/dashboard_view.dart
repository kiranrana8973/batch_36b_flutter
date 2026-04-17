import 'package:flutter/material.dart';
import 'package:second_app/views/arithmetic_view.dart';
import 'package:second_app/views/si_view.dart';

// navigator : source -> destination
// named route
// go router
class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArithmeticView()),
                );
              },
              child: Text('Arithmetic View'),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Area Of Circle ')),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SiView()),
                );
              },
              child: Text('Simple Interest View'),
            ),
          ],
        ),
      ),
    );
  }
}
