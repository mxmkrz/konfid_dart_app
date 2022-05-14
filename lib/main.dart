import 'package:flutter/material.dart';
import 'package:konfiden_app/pages/main_frame/main_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {

  initFirebase();

  runApp(new MyApp());
}

void initFirebase() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(
    apiKey: "AIzaSyCn7uE_sTK8g6xb1_bAgByomt6HFrguLGw",
    appId: "1:91080007827:android:6e1d4aeabacfeaf6162d66",
    messagingSenderId: "91080007827-3u5nj6ebq7c3domser9pqh2ki16u4af4.apps.googleusercontent.com",
    projectId: "konfidenciaapp",
  )
  );

}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color(0xffE7E3E0)
      ),
      home: new MainScreen()
    );
  }
}


