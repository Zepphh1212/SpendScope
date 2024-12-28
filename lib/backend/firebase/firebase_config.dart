import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDDH_vv_68aFfUjWacUuSLRhjyZpK4Qd3A",
            authDomain: "spend-scope.firebaseapp.com",
            projectId: "spend-scope",
            storageBucket: "spend-scope.appspot.com",
            messagingSenderId: "1046086802229",
            appId: "1:1046086802229:web:c4ea7b120b853559410a7c"));
  } else {
    await Firebase.initializeApp();
  }
}
