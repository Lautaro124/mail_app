import 'package:flutter/material.dart';

class UserAvatar extends StatefulWidget {
  final String? userAvatar;
  const UserAvatar({Key? key, this.userAvatar}) : super(key: key);

  @override
  State<UserAvatar> createState() => _UserAvatarState();
}

class _UserAvatarState extends State<UserAvatar> {
  final String avatarUnknow =
      'https://i1.sndcdn.com/avatars-yUaIyy3WgPO6ClzQ-Wz2yoQ-t500x500.jpg';

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundImage: NetworkImage(widget.userAvatar ?? avatarUnknow),
    );
  }
}
