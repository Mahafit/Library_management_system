import 'package:book_app/src/page/home/home.dart';
import 'package:book_app/src/page/home/widget/search_book.dart';
import 'package:book_app/src/page/member/editProfile.dart';
import 'package:book_app/src/settings/settings_controller.dart';
import 'package:book_app/src/page/home/widget/search_book.dart';
import 'package:flutter/material.dart';
import '';

class Home extends StatefulWidget {
  const Home({key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

int _index = 0;
final List<Widget> _tabs = [
  HomePage(),
  HomePage(),
  Search(),
  EditProfileWidget(),
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
