import 'package:flutter/material.dart';
import 'package:my_guest_book_app/page/my/my.dart';
import '../guestbook/guestbook.dart';

class NavigationPage extends StatefulWidget {

  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();

}

class _NavigationPageState extends State<NavigationPage> {

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        /*indicatorColor: Colors.amber,*/
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: '방명록',
          ),
          // NavigationDestination(
          //   icon: Badge(child: Icon(Icons.notifications_sharp)),
          //   label: '??',
          // ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.person)),
            label: 'MY',
          ),
        ],
      ),
      body: <Widget>[
        /// Feed page
        const GuestbookPage(),
        /// Notifications page
        const MyPage(),
      ][currentPageIndex],
    );
  }

}