// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return options;
    } else {
      
      throw UnimplementedError("Current platform not supported");
    }
  }

  static final FirebaseOptions options = FirebaseOptions(
    apiKey: "AIzaSyCi2RAgkIVoh64R6pUyEJmmhgZARyT2USc",
    appId: "1:855862626488:android:c701437a1be8a3deac0c4d",
    messagingSenderId: '600025639536',
    projectId: "isomo-7c88a",
    authDomain: 'isomo-7c88a.firebaseapp.com',
    storageBucket: "isomo-7c88a.appspot.com",
  );
}
