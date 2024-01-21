import 'package:flutter/material.dart';

import '../../component/location_sheet.dart';
import '../../component/profile_image.dart';

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
        title: TextButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (_) {
                    return LocationSelectSheet();
                  },
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "위치를 지정해주세요",
                ),
                Icon(Icons.arrow_drop_down)
              ],
            ),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(entries[index]),
                subtitle: Text("조회수 : $_counter"),
                leading: const ProfileImage(
                  color: Colors.blueAccent, // 최초 접속한 유저마다 닉네임 및 고유색상을 부여해주자
                  nickName: "이",
                ),
                trailing: const Icon(Icons.thumb_up),
                onTap: () {
                  setState(() {
                    _counter++;
                  });
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Padding(padding: EdgeInsets.all(4))
        )
        ),
      );
  }

}