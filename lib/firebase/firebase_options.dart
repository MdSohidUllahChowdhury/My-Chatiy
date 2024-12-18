// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

// Default [FirebaseOptions] for use with your Firebase apps.
//
// Example:
// ```dart
// import 'firebase_options.dart';
// // ...
// await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );
// ```

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
    apiKey: 'AIzaSyDMyXg-1LP7_Au4Rl4bVZSXh9xfuvyXCnQ',
    appId: '1:405440461939:web:d3ff2b1ed7f300fac97e06',
    messagingSenderId: '405440461939',
    projectId: 'mychatiy-app',
    authDomain: 'mychatiy-app.firebaseapp.com',
    storageBucket: 'mychatiy-app.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0IyytYc_P55LCSOW6AnObrIltA6NH95I',
    appId: '1:405440461939:android:ef29f275d4bd8197c97e06',
    messagingSenderId: '405440461939',
    projectId: 'mychatiy-app',
    storageBucket: 'mychatiy-app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB-lUGVJUhVuJ2FvIJ8mqRGbII8d7oOeFo',
    appId: '1:405440461939:ios:c3e3d0a8ef6dc382c97e06',
    messagingSenderId: '405440461939',
    projectId: 'mychatiy-app',
    storageBucket: 'mychatiy-app.firebasestorage.app',
    iosBundleId: 'com.example.myChatiy',
  );
}
