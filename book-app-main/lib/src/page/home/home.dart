import 'package:book_app/src/page/home/widget/cart.dart';
import 'package:book_app/src/page/home/widget/coming_book.dart';
import 'package:book_app/src/page/home/widget/new_release.dart';
import 'package:book_app/src/page/home/widget/recommended_book.dart';
import 'package:book_app/src/page/home/widget/search_book.dart';
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
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Color(0xFFA49CF1),
        elevation: 0,
        title: Text(
          'Book App',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => cartWidget(),
                  ),
                );
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Search(),
                  ),
                );
              },
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
