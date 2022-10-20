import 'package:book_app/src/page/detail/book_detail.dart';
import 'package:book_app/src/page/home/home.dart';
import 'package:book_app/src/page/home/signup_login/createAccount.dart';
import 'package:book_app/src/page/home/signup_login/login.dart';
import 'package:book_app/src/page/home/widget/borrow_return.dart';
import 'package:book_app/src/page/home/widget/notification.dart';
import 'package:book_app/src/page/member/profilePage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

int _index = 1;
final List<Widget> _tabs = [
  ProfilePageWidget(),
  HomePage(),
  BorrowReturnCopyWidget(),
  NotificationWidget(),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 150, 131, 255),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Color.fromARGB(255, 93, 182, 255),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Member',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Borrow/Return',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'notification',
          ),
        ],
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
