import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/app_core/config/firabese_config.dart';
import 'package:offertorio/app_widget.dart';

Future<void> main() async {
  firabaseConfig();
  runApp(
    const ProviderScope(
      child: AppWidget(),
    ),
  );
}
