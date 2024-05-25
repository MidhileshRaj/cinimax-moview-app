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
    apiKey: 'AIzaSyDzRWG42GsDULikn21d3PienHZRhP1F-sg',
    appId: '1:1065229895253:web:e9943aa7e1b111111a36dc',
    messagingSenderId: '1065229895253',
    projectId: 'cinemax-filmsapp',
    authDomain: 'cinemax-filmsapp.firebaseapp.com',
    storageBucket: 'cinemax-filmsapp.appspot.com',
    measurementId: 'G-N3KPDW7Y4P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqyLMQ9d1wswLNiSIsxTAThPmOqZJYtXM',
    appId: '1:1065229895253:android:c717896e0a023c201a36dc',
    messagingSenderId: '1065229895253',
    projectId: 'cinemax-filmsapp',
    storageBucket: 'cinemax-filmsapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAx2dDY697O7oAGrGe8RZATJIPTu3CLP18',
    appId: '1:1065229895253:ios:54501ba150406d591a36dc',
    messagingSenderId: '1065229895253',
    projectId: 'cinemax-filmsapp',
    storageBucket: 'cinemax-filmsapp.appspot.com',
    iosBundleId: 'com.example.cimaxFilmsApp',
  );
}
