import 'package:firebase_pictures_saved/modules/mail/ui/screens/mobile/mail_list.dart';
import 'package:firebase_pictures_saved/modules/user/ui/widgets/appbar.dart';
import 'package:firebase_pictures_saved/widgets/responsive_scree.dart';
import 'package:flutter/material.dart';

class MailScreen extends StatelessWidget {
  const MailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveScreen(
      sizeScreen: MediaQuery.of(context).size.width,
      appbar: appBar('Mail'),
      mobileScreen: const MailListMobile(),
    );
  }
}
