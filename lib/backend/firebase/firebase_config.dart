import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBqgDSqk4TEgP4gvkaW6lHgkh62_55E1u4",
            authDomain: "walidapp-8c3dd.firebaseapp.com",
            projectId: "walidapp-8c3dd",
            storageBucket: "walidapp-8c3dd.appspot.com",
            messagingSenderId: "294610205280",
            appId: "1:294610205280:web:4e5a29aa0b4bb23f286105"));
  } else {
    await Firebase.initializeApp();
  }
}
