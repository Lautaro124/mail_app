import 'package:firebase_pictures_saved/modules/mail/models/mail_detail.dart';
import 'package:firebase_pictures_saved/modules/mail/resources/data.dart';
import 'package:firebase_pictures_saved/modules/mail/ui/widgets/mail_detail.dart';
import 'package:firebase_pictures_saved/modules/user/ui/widgets/appbar.dart';
import 'package:firebase_pictures_saved/widgets/responsive_scree.dart';
import 'package:flutter/material.dart';

class MailDetailMobile extends StatefulWidget {
  const MailDetailMobile({Key? key}) : super(key: key);

  @override
  State<MailDetailMobile> createState() => _MailDetailMobileState();
}

class _MailDetailMobileState extends State<MailDetailMobile> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveScreen(
      sizeScreen: MediaQuery.of(context).size.width,
      appbar: appBar('Detail'),
      mobileScreen: MailDetailCard(
        mailDetail: MailDetail(
          mail: user,
          dateSent: DateTime.now(),
          pictures: [
            'https://www.tooltyp.com/wp-content/uploads/2014/10/1900x920-8-beneficios-de-usar-imagenes-en-nuestros-sitios-web.jpg',
            'https://images.unsplash.com/photo-1516026672322-bc52d61a55d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YWZyaWNhfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
            'https://fundaciongabo.org/sites/default/files/styles/850px/public/imagenes-falsas.jpg?itok=QYSpPSZw'
          ],
        ),
      ),
    );
  }
}
