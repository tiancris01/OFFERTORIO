import 'package:flutter/material.dart';
import 'package:offertorio/app/config/theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Offertorio App',
      theme: AppTheme.themeData,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Offertorio App'),
          ),
          body: const Center(
            child: Text('Hello World'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          )),
    );
  }
}
