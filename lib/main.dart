import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/app_core/config/firebase/firabese_config.dart';
import 'package:offertorio/app_widget.dart';

Future<void> main() async {
  await firebaseConfig();
  runApp(
    const ProviderScope(
      child: AppWidget(),
    ),
  );
}
