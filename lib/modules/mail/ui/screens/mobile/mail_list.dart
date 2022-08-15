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
                userAvatar:
                    'https://concepto.de/wp-content/uploads/2018/08/persona-e1533759204552.jpg',
                title: 'title',
                userName: 'userName',
                info: 'info',
                isviewed: false),
          )
        ],
      ),
    );
  }
}
