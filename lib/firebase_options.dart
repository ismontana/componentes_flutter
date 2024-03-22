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
    apiKey: 'AIzaSyBFmMGpomAeCOoy5G62jwNP-PqDmm9HtFs',
    appId: '1:412131417589:web:04fca037f6dca88a0a14bc',
    messagingSenderId: '412131417589',
    projectId: 'componentes-25ea0',
    authDomain: 'componentes-25ea0.firebaseapp.com',
    storageBucket: 'componentes-25ea0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBnBMssVf-5VAz0l3eN1HUPjQaUpWOrlaw',
    appId: '1:412131417589:android:5b0250b959b3b7d70a14bc',
    messagingSenderId: '412131417589',
    projectId: 'componentes-25ea0',
    storageBucket: 'componentes-25ea0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBLZ2i1XqnzE2LvIoELc25jmwYKCYp-z4k',
    appId: '1:412131417589:ios:cc4c22d29dcdd32c0a14bc',
    messagingSenderId: '412131417589',
    projectId: 'componentes-25ea0',
    storageBucket: 'componentes-25ea0.appspot.com',
    iosBundleId: 'com.example.practica3',
  );
}
