import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:movie_app/app.dart';
import 'package:movie_app/features/login/logic/provider/login_provider.dart';
import 'package:provider/provider.dart';

void main() {
  GoogleSignIn googleSignIn = GoogleSignIn(
    serverClientId:
        '977232975174-b2a4pj3mda7nj8ogc88c5c8ji7qvmgb2.apps.googleusercontent.com',
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: const App(),
    ),
  );
}
