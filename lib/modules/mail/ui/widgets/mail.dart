import 'package:firebase_pictures_saved/modules/mail/models/mail.dart';
import 'package:firebase_pictures_saved/modules/mail/ui/widgets/user_avatar.dart';
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
        height: 100,
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 10),
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).backgroundColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10, right: 20),
              child: UserAvatar(userAvatar: mail.userAvatar),
            ),
            SizedBox(
              width: 240,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mail.userName,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          mail.title,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      mail.info,
                      style: Theme.of(context).textTheme.bodySmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
