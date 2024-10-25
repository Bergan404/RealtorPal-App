import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDmx2bEsUkOnoWmRUUClaLxqpc4QTm4eTI",
            authDomain: "realtor-pal-unpzhm.firebaseapp.com",
            projectId: "realtor-pal-unpzhm",
            storageBucket: "realtor-pal-unpzhm.appspot.com",
            messagingSenderId: "7067680651",
            appId: "1:7067680651:web:eb9869df78ca77223db98e"));
  } else {
    await Firebase.initializeApp();
  }
}
