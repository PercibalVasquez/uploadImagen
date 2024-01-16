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
        return macos;
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
    apiKey: 'AIzaSyCszHWN6Ik1PHNyTGwK9AftYG8roB2R3xs',
    appId: '1:295061322850:web:bd7bd1fc025c2418ae653b',
    messagingSenderId: '295061322850',
    projectId: 'subirimagenes-1d7b3',
    authDomain: 'subirimagenes-1d7b3.firebaseapp.com',
    storageBucket: 'subirimagenes-1d7b3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxn-usezAj9OxyauPzMhtICsLlUjTcMHQ',
    appId: '1:295061322850:android:47a4fc96f1a8e4c1ae653b',
    messagingSenderId: '295061322850',
    projectId: 'subirimagenes-1d7b3',
    storageBucket: 'subirimagenes-1d7b3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZD2-6bCJdTQLMyvdGJfQBpq4UyANuQck',
    appId: '1:295061322850:ios:814ff3925c0184efae653b',
    messagingSenderId: '295061322850',
    projectId: 'subirimagenes-1d7b3',
    storageBucket: 'subirimagenes-1d7b3.appspot.com',
    iosBundleId: 'com.example.uploadimg',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBZD2-6bCJdTQLMyvdGJfQBpq4UyANuQck',
    appId: '1:295061322850:ios:74ccc118babb9775ae653b',
    messagingSenderId: '295061322850',
    projectId: 'subirimagenes-1d7b3',
    storageBucket: 'subirimagenes-1d7b3.appspot.com',
    iosBundleId: 'com.example.uploadimg.RunnerTests',
  );
}