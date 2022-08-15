import 'package:firebase_pictures_saved/modules/mail/models/mail_detail.dart';
import 'package:firebase_pictures_saved/modules/mail/ui/widgets/user_avatar.dart';
import 'package:flutter/material.dart';

class MailDetailCard extends StatefulWidget {
  final MailDetail mailDetail;
  const MailDetailCard({Key? key, required this.mailDetail}) : super(key: key);

  @override
  State<MailDetailCard> createState() => _MailDetailCardState();
}

class _MailDetailCardState extends State<MailDetailCard> {
  MailDetail get mailDetail => widget.mailDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          basicInfo(),
          Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                bodyMail(),
                mailDetail.pictures.isNotEmpty
                    ? pictureList()
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget pictureList() => Container(
        margin: const EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width * 0.8,
        height: 80,
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: mailDetail.pictures
              .map(
                (picture) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(picture),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      );

  Widget basicInfo() => Container(
        margin: const EdgeInsets.only(top: 10, bottom: 20),
        child: ListTile(
          leading: UserAvatar(userAvatar: mailDetail.mail.userAvatar),
          title: Text(mailDetail.mail.userName),
          subtitle: Text(
              'sent on: ${mailDetail.dateSent.year}-${mailDetail.dateSent.month}-${mailDetail.dateSent.day} at ${mailDetail.dateSent.hour}:${mailDetail.dateSent.minute}'),
        ),
      );

  Widget bodyMail() => Container(
        height: MediaQuery.of(context).size.height * 0.5,
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Text(
                mailDetail.mail.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Text(
              mailDetail.mail.info,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      );
}
