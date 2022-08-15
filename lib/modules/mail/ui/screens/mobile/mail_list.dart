import 'package:firebase_pictures_saved/modules/mail/models/mail.dart';
import 'package:firebase_pictures_saved/modules/mail/ui/widgets/mail.dart';
import 'package:flutter/material.dart';

class MailListMobile extends StatelessWidget {
  const MailListMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          MailCard(
            mail: Mail(
                title: 'title',
                userName: 'userName',
                info: 'info',
                isviewed: false),
          ),
          MailCard(
            mail: Mail(
                title: 'title',
                userName: 'userName',
                info: 'info',
                isviewed: false),
          ),
          MailCard(
            mail: Mail(
                title: 'title',
                userName: 'userName',
                info: 'info',
                isviewed: false),
          ),
          MailCard(
            mail: Mail(
                title: 'title',
                userName: 'userName',
                info: 'info',
                isviewed: false),
          ),
        ],
      ),
    );
  }
}
