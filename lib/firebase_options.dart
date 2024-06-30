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
    apiKey: 'AIzaSyAXl_jyirSQlzc2DsvCdfozi6nD6_g2y8Q',
    appId: '1:720955481757:web:90248cadf56cabd0817e74',
    messagingSenderId: '720955481757',
    projectId: 'adcafeshop-6e837',
    authDomain: 'adcafeshop-6e837.firebaseapp.com',
    storageBucket: 'adcafeshop-6e837.appspot.com',
    measurementId: 'G-QR14YCEZTH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHXIP-6coxL5y4KxuBk2ZKWuQdcLh9zfc',
    appId: '1:720955481757:android:6d500b033f4630b8817e74',
    messagingSenderId: '720955481757',
    projectId: 'adcafeshop-6e837',
    storageBucket: 'adcafeshop-6e837.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAIAo-cuF4ERz1T8YmX2tPvXtiCdt80bzc',
    appId: '1:720955481757:ios:966d528d71fb5ca8817e74',
    messagingSenderId: '720955481757',
    projectId: 'adcafeshop-6e837',
    storageBucket: 'adcafeshop-6e837.appspot.com',
    iosBundleId: 'com.example.adcafeshop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAIAo-cuF4ERz1T8YmX2tPvXtiCdt80bzc',
    appId: '1:720955481757:ios:6f7346005b96dee8817e74',
    messagingSenderId: '720955481757',
    projectId: 'adcafeshop-6e837',
    storageBucket: 'adcafeshop-6e837.appspot.com',
    iosBundleId: 'com.example.adcafeshop.RunnerTests',
  );
}