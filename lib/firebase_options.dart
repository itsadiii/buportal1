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
    apiKey: 'AIzaSyAmbHs4Q5izXXXAgZ6yyVdLpVhw_aRHpgI',
    appId: '1:939092589621:web:fb408174aaa86fdf06c57c',
    messagingSenderId: '939092589621',
    projectId: 'buportal1',
    authDomain: 'buportal1.firebaseapp.com',
    storageBucket: 'buportal1.appspot.com',
    measurementId: 'G-PELKTXGT6K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA2dYTI0hLE9uzTQ3dpCJ4uMrrYjC5cDJc',
    appId: '1:939092589621:android:a063ddcfded12b6f06c57c',
    messagingSenderId: '939092589621',
    projectId: 'buportal1',
    storageBucket: 'buportal1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD55DJs-0ASOyOamT0ZWN4mVRyQ2tG4020',
    appId: '1:939092589621:ios:1e5fc0344930bcce06c57c',
    messagingSenderId: '939092589621',
    projectId: 'buportal1',
    storageBucket: 'buportal1.appspot.com',
    iosClientId: '939092589621-lkpj7843njdf9ist2mostgmjuvl9284a.apps.googleusercontent.com',
    iosBundleId: 'com.example.portal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD55DJs-0ASOyOamT0ZWN4mVRyQ2tG4020',
    appId: '1:939092589621:ios:1e5fc0344930bcce06c57c',
    messagingSenderId: '939092589621',
    projectId: 'buportal1',
    storageBucket: 'buportal1.appspot.com',
    iosClientId: '939092589621-lkpj7843njdf9ist2mostgmjuvl9284a.apps.googleusercontent.com',
    iosBundleId: 'com.example.portal',
  );
}
