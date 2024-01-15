import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:offertorio/firebase_options.dart';

Future<void> firebaseConfig() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
