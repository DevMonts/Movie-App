import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginProvider extends ChangeNotifier {
  final GoogleSignIn googleLogin = GoogleSignIn(
    scopes: ['email'],
    serverClientId:
        '977232975174-b2a4pj3mda7nj8ogc88c5c8ji7qvmgb2.apps.googleusercontent.com',
  );
  GoogleSignInAccount? user;
  Future<void> login() async {
final account = await googleLogin.signIn();
user = account;
notifyListeners();
  }
}
