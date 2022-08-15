import 'package:firebase_pictures_saved/modules/mail/resources/data.dart';
import 'package:firebase_pictures_saved/modules/mail/ui/widgets/mail.dart';
import 'package:flutter/material.dart';

class MailListMobile extends StatelessWidget {
  const MailListMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: ListView.separated(
        itemCount: users.length,
        itemBuilder: (context, index) => MailCard(
          mail: users[index],
        ),
        separatorBuilder: (context, index) => Divider(
          color: Theme.of(context).dividerColor,
        ),
      ),
    );
  }
}
