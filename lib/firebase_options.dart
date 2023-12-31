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
    apiKey: 'AIzaSyCNMpdGGNDVsmGRAwgFRxMeW1xyDA7kfgk',
    appId: '1:853736288350:web:f42f76164d06f86e3904cf',
    messagingSenderId: '853736288350',
    projectId: 'bit-nine-demo',
    authDomain: 'bit-nine-demo.firebaseapp.com',
    storageBucket: 'bit-nine-demo.appspot.com',
    measurementId: 'G-ZYXKC0YD6K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzziP2u4nmWD6jG2TNCx5Ip9xcO1tKz40',
    appId: '1:853736288350:android:6fd6b99d5ee01af23904cf',
    messagingSenderId: '853736288350',
    projectId: 'bit-nine-demo',
    storageBucket: 'bit-nine-demo.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPiNbgbnVEn3b9a_t_hZptXVS4p-arIGU',
    appId: '1:853736288350:ios:81fd8863dbde1aa23904cf',
    messagingSenderId: '853736288350',
    projectId: 'bit-nine-demo',
    storageBucket: 'bit-nine-demo.appspot.com',
    iosClientId: '853736288350-kbi3ak6psf93rt60bderre381s50k7u6.apps.googleusercontent.com',
    iosBundleId: 'com.example.bitNineDemo',
  );
}
