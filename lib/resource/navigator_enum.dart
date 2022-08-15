import 'package:firebase_pictures_saved/modules/mail/ui/screens/mail_sceen.dart';
import 'package:firebase_pictures_saved/modules/mail/ui/screens/mobile/mail_detail_mobile.dart';
import 'package:firebase_pictures_saved/modules/user/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';

enum NavigationRoute {
  login(MainScreen()),
  mail(MailScreen()),
  mailDetail(MailDetailMobile());

  const NavigationRoute(this.screen);
  final Widget screen;
}
