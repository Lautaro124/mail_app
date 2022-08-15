import 'package:firebase_pictures_saved/resource/navigator_enum.dart';
import 'package:flutter/material.dart';

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

  void onPresLogin() => Navigator.pushNamed(context, NavigationRoute.mail.name);
}
