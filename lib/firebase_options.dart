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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqjWQKnAJXRFqkZeCDkezIVovc-5sKBpk',
    appId: '1:622359657724:android:30b2bd83cb6cb45331ab79',
    messagingSenderId: '622359657724',
    projectId: 'login-survilance',
    storageBucket: 'login-survilance.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAx_YHFZGez1_cAiDg3BOjKMC4Bz3OvkCA',
    appId: '1:622359657724:ios:9eb3c1b03854e13431ab79',
    messagingSenderId: '622359657724',
    projectId: 'login-survilance',
    storageBucket: 'login-survilance.appspot.com',
    iosClientId: '622359657724-qp5dl9p06n5cdart29ekg1q225g6su7o.apps.googleusercontent.com',
    iosBundleId: 'com.example.smolP2Xixi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAx_YHFZGez1_cAiDg3BOjKMC4Bz3OvkCA',
    appId: '1:622359657724:ios:9eb3c1b03854e13431ab79',
    messagingSenderId: '622359657724',
    projectId: 'login-survilance',
    storageBucket: 'login-survilance.appspot.com',
    iosClientId: '622359657724-qp5dl9p06n5cdart29ekg1q225g6su7o.apps.googleusercontent.com',
    iosBundleId: 'com.example.smolP2Xixi',
  );
}
