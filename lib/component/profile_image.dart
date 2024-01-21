import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {

  final String nickName;
  final Color color;

  const ProfileImage({
    required this.nickName,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CircleAvatar(
      backgroundColor: color, // 최초 접속한 유저마다 닉네임 및 고유색상을 부여해주자
      child: Text(nickName),
    );
  }

}