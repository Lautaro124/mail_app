import 'package:firebase_pictures_saved/modules/mail/models/mail.dart';
import 'package:firebase_pictures_saved/resource/navigator_enum.dart';
import 'package:flutter/material.dart';

class MailCard extends StatefulWidget {
  final Mail mail;
  final VoidCallback? onPress;
  const MailCard({Key? key, required this.mail, this.onPress})
      : super(key: key);

  @override
  State<MailCard> createState() => _MailCardState();
}

class _MailCardState extends State<MailCard> {
  Mail get mail => widget.mail;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress ??
          () => Navigator.pushNamed(context, NavigationRoute.mailDetail.name),
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 50),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
        child: ListBody(
          children: [
            ListTile(
              title: Text(mail.title),
              subtitle: Text(mail.userName),
            ),
            Center(
              child: Text(mail.info),
            ),
          ],
        ),
      ),
    );
  }
}
