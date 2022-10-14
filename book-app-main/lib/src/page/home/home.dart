import 'package:book_app/src/page/home/widget/coming_book.dart';
import 'package:book_app/src/page/home/widget/new_release.dart';
import 'package:book_app/src/page/home/widget/recommended_book.dart';
import 'package:book_app/src/page/home/widget/trending_book.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 198, 245),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 251, 124, 255),
        elevation: 0,
        title: Text(
          'Book App',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        children: [
          ComingBook(),
          Newrelease(),
          RecommendedBook(),
          TrendingBook(),
        ],
      ),
    );
  }
}
