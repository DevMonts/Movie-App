import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:movie_app/app.dart';
import 'package:movie_app/core/config/env.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  GoogleSignIn
      //googleSignIn = GoogleSignIn
      .instance
      .initialize(
        serverClientId: Env.googleApiKey,
      );
  runApp(
    ProviderScope(
      //   child: ChangeNotifierProvider(
      //     create:
      //         (
      //           context,
      //         ) => LoginProvider(),
      child: const App(),
      //),
    ),
  );
}
