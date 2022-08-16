import 'package:firebase_pictures_saved/modules/user/ui/screens/mobile/login.dart';
import 'package:firebase_pictures_saved/modules/user/ui/widgets/appbar.dart';
import 'package:firebase_pictures_saved/widgets/responsive_scree.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveScreen(
      sizeScreen: MediaQuery.of(context).size.width,
      appbar: appBar('Login'),
      mobileScreen: const LoginMobile(),
    );
  }
}
