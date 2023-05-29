import 'package:flutter/material.dart';
import 'package:offertorio/app/config/theme.dart';
import 'package:offertorio/app/routes/app_routes.dart';

class AppWidget extends StatelessWidget {
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
