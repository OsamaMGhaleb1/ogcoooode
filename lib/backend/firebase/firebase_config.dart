import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDDNWfGlbVPYEUWfOvBwCwNcsZmOLXfQ7A",
            authDomain: "faqih-85pm5k.firebaseapp.com",
            projectId: "faqih-85pm5k",
            storageBucket: "faqih-85pm5k.firebasestorage.app",
            messagingSenderId: "42187746156",
            appId: "1:42187746156:web:e268ebdcb672ab5b56a149"));
  } else {
    await Firebase.initializeApp();
  }
}
