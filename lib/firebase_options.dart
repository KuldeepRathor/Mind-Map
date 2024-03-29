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
    apiKey: 'AIzaSyAm6-ZH4aqPPC9ougYHpt2rX970siHWE0Y',
    appId: '1:953706873991:web:c113b753510ac5b1cfe422',
    messagingSenderId: '953706873991',
    projectId: 'mindmap3-3b889',
    authDomain: 'mindmap3-3b889.firebaseapp.com',
    storageBucket: 'mindmap3-3b889.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDIw5yN2X0fKaTk1KOvpjQ7w64VPhzxToU',
    appId: '1:953706873991:android:c6d142abf5339a5acfe422',
    messagingSenderId: '953706873991',
    projectId: 'mindmap3-3b889',
    storageBucket: 'mindmap3-3b889.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAZGgdRdiC4jdT6YyoKn4HCCgMvr3skOcA',
    appId: '1:953706873991:ios:5d1f7e8b3fe590accfe422',
    messagingSenderId: '953706873991',
    projectId: 'mindmap3-3b889',
    storageBucket: 'mindmap3-3b889.appspot.com',
    iosBundleId: 'com.example.mindMap',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAZGgdRdiC4jdT6YyoKn4HCCgMvr3skOcA',
    appId: '1:953706873991:ios:b63d8f22be600d4ecfe422',
    messagingSenderId: '953706873991',
    projectId: 'mindmap3-3b889',
    storageBucket: 'mindmap3-3b889.appspot.com',
    iosBundleId: 'com.example.mindMap.RunnerTests',
  );
}
