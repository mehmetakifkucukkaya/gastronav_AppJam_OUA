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
    apiKey: 'AIzaSyAAGJidk7PVRFPlmAaHD-Edw6jYGW6B2Q4',
    appId: '1:882694316495:web:d296597ef85174c8b9b2ba',
    messagingSenderId: '882694316495',
    projectId: 'gastronav-oua',
    authDomain: 'gastronav-oua.firebaseapp.com',
    storageBucket: 'gastronav-oua.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATvmy5PSlpCVh97aVwnLBVG7Tk5NpBTVw',
    appId: '1:882694316495:android:f607012ee1ca94bdb9b2ba',
    messagingSenderId: '882694316495',
    projectId: 'gastronav-oua',
    storageBucket: 'gastronav-oua.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDlN9PeWxMYgfK7q83lNfr_4RuASNxnAgk',
    appId: '1:882694316495:ios:79731469dafc0896b9b2ba',
    messagingSenderId: '882694316495',
    projectId: 'gastronav-oua',
    storageBucket: 'gastronav-oua.appspot.com',
    iosBundleId: 'com.example.gastroNav',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDlN9PeWxMYgfK7q83lNfr_4RuASNxnAgk',
    appId: '1:882694316495:ios:14c1f0201a5aa518b9b2ba',
    messagingSenderId: '882694316495',
    projectId: 'gastronav-oua',
    storageBucket: 'gastronav-oua.appspot.com',
    iosBundleId: 'com.example.gastroNav.RunnerTests',
  );
}
