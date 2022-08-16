import 'dart:io' show Platform;

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_pictures_saved/firebase_options.dart';
import 'package:firebase_pictures_saved/modules/user/bloc/user_bloc.dart';
import 'package:firebase_pictures_saved/modules/user/models/user.dart';
import 'package:firebase_pictures_saved/resource/navigator_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile({Key? key}) : super(key: key);

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: onPresLogin,
            child: const Text('Login'),
          )
        ],
      ),
    );
  }

  void onPresLogin() async {
    final GoogleSignIn googleSignIn = GoogleSignIn(
        clientId: Platform.isIOS
            ? DefaultFirebaseOptions.currentPlatform.iosClientId
            : DefaultFirebaseOptions.currentPlatform.androidClientId);
    final GoogleSignInAccount? user = await googleSignIn.signIn();

    if (user == null) return;
    await authenticationLoginEvent(user);
    loginEvent(User(
      name: user.displayName ?? '',
      picture: user.photoUrl ?? '',
      email: user.email,
    ));

    await Future.delayed(const Duration(seconds: 1));
    goDashboard();
  }

  Future<void> authenticationLoginEvent(GoogleSignInAccount user) async {
    final GoogleSignInAuthentication googleAuth = await user.authentication;

    final auth.OAuthCredential credentials = auth.GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await auth.FirebaseAuth.instance.signInWithCredential(credentials);
  }

  void loginEvent(User user) =>
      BlocProvider.of<UserBloc>(context).add(UserLoginWithGoogle(user));

  void goDashboard() {
    final NavigatorState navigator = Navigator.of(context);

    navigator.pushNamed(NavigationRoute.mail.name);
  }
}
