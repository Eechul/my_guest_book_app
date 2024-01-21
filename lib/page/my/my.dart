import 'package:flutter/material.dart';

import '../../component/profile_image.dart';

class MyPage extends StatefulWidget {

  const MyPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyPageState();
  }

}

class _MyPageState extends State<MyPage> {
    // String nickName = "노련한 오리";

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('마이페이지'),
          centerTitle: false,
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: ProfileImage(
                    color: Colors.blueAccent, // 최초 접속한 유저마다 닉네임 및 고유색상을 부여해주자
                    nickName: "노", // 사진 없을 시, 닉네임 첫글자 넣기
                  ),
                  title: Text("노련한 오리"),
                  subtitle: Text("자기소개를 작성해주세요."),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 2'),
                  subtitle: Text('This is a notification'),
                ),
              ),
            ],
          ),
        ),
      );
    }

}