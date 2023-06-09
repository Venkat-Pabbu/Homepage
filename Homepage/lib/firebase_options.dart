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
    apiKey: 'AIzaSyBHlJFf4GA6iq83rj5yoFXgS3OJvvDy8Mc',
    appId: '1:1062368279766:web:828e10c06fa452283f1d77',
    messagingSenderId: '1062368279766',
    projectId: 'house-party-53eb7',
    authDomain: 'house-party-53eb7.firebaseapp.com',
    storageBucket: 'house-party-53eb7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4MkNGMosac_vB93Y7oA02d91nMYnsuWw',
    appId: '1:1062368279766:android:33c605f4469c4e103f1d77',
    messagingSenderId: '1062368279766',
    projectId: 'house-party-53eb7',
    storageBucket: 'house-party-53eb7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBO_l9NWdiXrWtiMa3rN__HCZvkdhN0Cb0',
    appId: '1:1062368279766:ios:3d83b2e209aa7cbf3f1d77',
    messagingSenderId: '1062368279766',
    projectId: 'house-party-53eb7',
    storageBucket: 'house-party-53eb7.appspot.com',
    iosClientId: '1062368279766-29h169167k3vmcst32n4sl2smog7tvej.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBO_l9NWdiXrWtiMa3rN__HCZvkdhN0Cb0',
    appId: '1:1062368279766:ios:3d83b2e209aa7cbf3f1d77',
    messagingSenderId: '1062368279766',
    projectId: 'house-party-53eb7',
    storageBucket: 'house-party-53eb7.appspot.com',
    iosClientId: '1062368279766-29h169167k3vmcst32n4sl2smog7tvej.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled1',
  );
}
