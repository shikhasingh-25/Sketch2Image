import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sketch_2_image/app/sign_in/Home%20Page.dart';
import 'package:sketch_2_image/app/sign_in/sign_in_page.dart';
import 'package:sketch_2_image/services/Auth.dart';
import 'package:sketch_2_image/app/sign_in/Home Page.dart';

import 'Home Page.dart';

class LandingPage extends StatelessWidget{
  const LandingPage({Key key, @required this.auth}) : super(key: key);
  final AuthBase auth;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
      stream: auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final user = snapshot.data;
          if (user == null) {
            return SignInPage(
              auth: auth,
            );
          }
          return HomePage(
            auth: auth,
          );
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

}



