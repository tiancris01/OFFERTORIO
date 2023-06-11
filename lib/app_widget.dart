import 'package:flutter/material.dart';
import 'package:offertorio/app/theme/theme.dart';
import 'package:offertorio/app/routes/app_routes.dart';

class AppWidget extends StatelessWidget {
  static const String routeName = 'landing';

  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Offertorio App',
      theme: AppTheme.themeData,
      routerConfig: appRouter,
    );
  }
}
