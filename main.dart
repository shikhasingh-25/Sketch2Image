import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sketch_2_image/app/sign_in/landing_page.dart';
import 'package:sketch_2_image/services/Auth.dart';
import 'package:sketch_2_image/splashscreen.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sketch2Image',
        theme: ThemeData(
            primarySwatch: Colors.indigo
        ),
        home: MySplash(),
    );

  }
}