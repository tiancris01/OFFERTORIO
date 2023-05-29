import 'package:flutter/material.dart';

class SplashScree extends StatelessWidget {
  static const String routeName = 'splash';

  const SplashScree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Loadig...'),
              SizedBox(height: 10.0),
              LinearProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
