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