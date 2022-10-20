import 'package:book_app/src/model/book.dart';
import 'package:book_app/src/page/detail/detail.dart';
import 'package:book_app/src/page/home/widget/category_title.dart';
import 'package:flutter/material.dart';

class TrendingBook extends StatelessWidget {
  final trendingList = Book.generateTrendingBook();
  TrendingBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryTitle('Trending Book'),
        ListView.separated(
            padding: const EdgeInsets.all(20),
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, index) {
              final book = trendingList[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailPage(book)));
                },
                child: SizedBox(
                  height: 120,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(book.imgUrl!),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  book.name!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Icon(
                                Icons.bookmark,
                                color: Colors.orange[300],
                              )
                            ],
                          ),
                          Text(
                            book.author!,
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            book.desc!,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (_, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: trendingList.length)
      ],
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 14,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
