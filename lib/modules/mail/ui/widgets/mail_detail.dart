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
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(mailDetail.mail.title),
            subtitle: Text(mailDetail.mail.userName),
          ),
          Text(mailDetail.mail.info),
          mailDetail.pictures.isNotEmpty ? pictureList() : const SizedBox(),
        ],
      ),
    );
  }

  Widget pictureList() => SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.4,
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          scrollDirection: Axis.vertical,
          children: mailDetail.pictures
              .map(
                (picture) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
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
}
