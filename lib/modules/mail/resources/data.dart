import 'package:firebase_pictures_saved/modules/mail/models/mail.dart';

final user = Mail(
  userAvatar:
      'https://concepto.de/wp-content/uploads/2018/08/persona-e1533759204552.jpg',
  title: 'Lorem ipsim bastardo',
  userName: 'Matias Caprece',
  info:
      '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
  isviewed: false,
);

List<Mail> users = [user, user, user, user];
