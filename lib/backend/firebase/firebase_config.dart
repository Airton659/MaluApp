import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBVXzFrDpULrflfoElMPdQEuAtsuPLB-vU",
            authDomain: "malu-97lsb5.firebaseapp.com",
            projectId: "malu-97lsb5",
            storageBucket: "malu-97lsb5.appspot.com",
            messagingSenderId: "640355932706",
            appId: "1:640355932706:web:720d6f9d2dd35163fa487b"));
  } else {
    await Firebase.initializeApp();
  }
}
