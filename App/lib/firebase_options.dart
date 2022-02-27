// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAJUcke4aeFzS0AnJ7jVhCWSOUyoVzXW2U',
    appId: '1:747838446439:web:95302810fd9b0dbe716dc2',
    messagingSenderId: '747838446439',
    projectId: 'chari-o',
    authDomain: 'chari-o.firebaseapp.com',
    storageBucket: 'chari-o.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCjQvLOzoV0cYKv2NafRUMAn_DeBKpzw8c',
    appId: '1:747838446439:android:629be39c07efd460716dc2',
    messagingSenderId: '747838446439',
    projectId: 'chari-o',
    storageBucket: 'chari-o.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzkNmvtQNALy_y3QzQmhA6SUhnyU7ByM4',
    appId: '1:747838446439:ios:d06ef4952fac97b4716dc2',
    messagingSenderId: '747838446439',
    projectId: 'chari-o',
    storageBucket: 'chari-o.appspot.com',
    iosClientId: '747838446439-rlhin50p83altt1ggmmkb02g2dlqi4gh.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );
}
