import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBJSuWLU_CkUePYH6aNqtnr7IAPEiFwsxg",
            authDomain: "edu-aid-w1s88m.firebaseapp.com",
            projectId: "edu-aid-w1s88m",
            storageBucket: "edu-aid-w1s88m.firebasestorage.app",
            messagingSenderId: "969334887141",
            appId: "1:969334887141:web:281752d7b8b279fb863a0c"));
  } else {
    await Firebase.initializeApp();
  }
}
