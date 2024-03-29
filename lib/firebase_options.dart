// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD12OX26CHkG3J-mGNz3A4UB9tH6nbowB0',
    appId: '1:417924602995:web:c6d58430a4db3edef51e06',
    messagingSenderId: '417924602995',
    projectId: 'offertorio-b7dd5',
    authDomain: 'offertorio-b7dd5.firebaseapp.com',
    storageBucket: 'offertorio-b7dd5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAyXqV03h1a978JWRM2OCWBeaH5dk-BLKQ',
    appId: '1:417924602995:android:c21cb1cc68d868e3f51e06',
    messagingSenderId: '417924602995',
    projectId: 'offertorio-b7dd5',
    storageBucket: 'offertorio-b7dd5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBOUPEldw-fmCn5J194ZmNxn1IiJwwVnlI',
    appId: '1:417924602995:ios:fcfc1acda07879f6f51e06',
    messagingSenderId: '417924602995',
    projectId: 'offertorio-b7dd5',
    storageBucket: 'offertorio-b7dd5.appspot.com',
    iosClientId: '417924602995-qb52iklnvnhi9h5b35o4aieeo4fqb12a.apps.googleusercontent.com',
    iosBundleId: 'com.example.offertorio',
  );
}
