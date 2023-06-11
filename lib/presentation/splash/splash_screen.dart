import 'package:flutter/material.dart';
import 'package:offertorio/app/utils/widgets/custom_space.dart';

class SplashScree extends StatefulWidget {
  static const String routeName = 'splash';

  const SplashScree({Key? key}) : super(key: key);

  @override
  State<SplashScree> createState() => _SplashScreeState();
}

class _SplashScreeState extends State<SplashScree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Loadig...'),
              CustomSpace.vertical(),
              const LinearProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
