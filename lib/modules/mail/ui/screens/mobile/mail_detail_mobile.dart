import 'package:firebase_pictures_saved/modules/mail/models/mail.dart';
import 'package:firebase_pictures_saved/modules/mail/models/mail_detail.dart';
import 'package:firebase_pictures_saved/modules/mail/ui/widgets/mail_detail.dart';
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
      mobileScreen: MailDetailCard(
        mailDetail: MailDetail(
          mail: Mail(
            userAvatar:
                'https://concepto.de/wp-content/uploads/2018/08/persona-e1533759204552.jpg',
            title: 'title',
            userName: 'userName',
            info: 'info',
            isviewed: false,
          ),
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
