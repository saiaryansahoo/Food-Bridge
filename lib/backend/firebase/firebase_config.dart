import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB0cwDPgJCXMNT7xQHBzeK3AZgMy7iRJjw",
            authDomain: "food-bridge-g41opz.firebaseapp.com",
            projectId: "food-bridge-g41opz",
            storageBucket: "food-bridge-g41opz.appspot.com",
            messagingSenderId: "312547094371",
            appId: "1:312547094371:web:b55df3351681189e1bed56"));
  } else {
    await Firebase.initializeApp();
  }
}
