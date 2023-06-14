import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/app/config/firabese_config.dart';
import 'package:offertorio/app_widget.dart';

void main() async {
  await firabaseConfig();
  runApp(const ProviderScope(child: AppWidget()));
}
