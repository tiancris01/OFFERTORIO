import 'package:flutter/material.dart';
import 'package:offertorio/app/config/firabese_config.dart';
import 'package:offertorio/app_widget.dart';

void main() async {
  await firabaseConfig();
  runApp(const AppWidget());
}
