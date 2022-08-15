import 'package:firebase_pictures_saved/modules/mail/models/mail.dart';

class MailDetail {
  final Mail mail;
  final DateTime dateSent;
  final List<String> pictures;

  MailDetail(
      {required this.mail, required this.dateSent, required this.pictures});
}
