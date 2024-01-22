import 'package:flutter/material.dart';

class LocationSelectSheet extends StatefulWidget {

  const LocationSelectSheet({
    Key? key,
  }) : super(key: key);

  @override
  _LocationSelectSheetState createState() => _LocationSelectSheetState();

}

class _LocationSelectSheetState extends State<LocationSelectSheet> {

  @override
  Widget build(BuildContext context) {

    // 로케이션 시트에는 아래와 같은 등록폼이 필요하다
    // 1. 자기 지역 검색
    //   1-1. 내 위치로 검색만 허용한다. (현재 위치를 가져온다, 위치 허용을 꼭 해야할까? 권한을 허용하지 않으면 어떻게 되는가?)
    // 2. 지역 (구/동) 검색 후, 셀렉
    // 3. 저장
    // 4. 저장 후 셀렉
    // 5. 시트 닫힌 후, 상단 바에 지역 표시
    // 6. 5번 이후에, 지역에 맞는 방명록 리스트 표시

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height - 100,
          child: Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16.0),
            child: Center(
              child: Text('Location Select Sheet'),
            ),
          )
        )

    );
  }

}