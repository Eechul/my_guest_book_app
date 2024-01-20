import 'package:flutter/material.dart';

class GuestbookPage extends StatefulWidget {

  const GuestbookPage({Key? key}) : super(key: key);

  @override
  State<GuestbookPage> createState() => _GuestbookPageState();

}

class _GuestbookPageState extends State<GuestbookPage> {

  List<String> entries = <String>['아오 개짜증나...(줄바꿈)', '오늘은 꽁초를 주워따', '주변을 꺠끗이 합시당'];

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title: const Text('방명록'),
      ),
      body: Center(
        child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(2),
                height: 50,
                color: Theme.of(context).colorScheme.inversePrimary,
                child: Row(
                  children: <Widget>[
                    const CircleAvatar(
                      backgroundColor: Colors.blueAccent, // 최초 접속한 유저마다 닉네임 및 고유색상을 부여해주자
                      child: Text("이"),
                    ),
                    const SizedBox(width: 6),
                    Text(entries[index]),
                  ]
                )
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Padding(padding: EdgeInsets.all(4))
        )
        ),
      );
  }

}