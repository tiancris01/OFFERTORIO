import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  static const String routeName = 'landing';

  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Landing Screen'),
      ),
    );
  }
}
