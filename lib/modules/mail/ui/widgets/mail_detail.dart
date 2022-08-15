import 'package:firebase_pictures_saved/modules/mail/models/mail_detail.dart';
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
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: 350,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(mailDetail.mail.info),
                  mailDetail.pictures.isNotEmpty
                      ? pictureList()
                      : const SizedBox(),
                ],
              ),
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
        child: Row(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(mailDetail.mail.userAvatar),
            ),
            Column(
              children: [
                Text(mailDetail.mail.title),
                Text(mailDetail.mail.userName),
              ],
            ),
          ],
        ),
      );
}
