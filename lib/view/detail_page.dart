import 'package:epub_view/epub_view.dart' as pub;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riverspods/constants/app_sizes.dart';
import 'package:riverspods/models/book.dart';
import 'package:riverspods/view/book_view.dart';



class DetailPage extends StatelessWidget {
  final Book book;
  const DetailPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
        body: ListView(
          children: [
            Image.network(book.imageUrl),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(book.title),
                      Column(
                        children: [
                          Text(book.rating),
                          Text(book.genre),

                        ],
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(book.detail),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){
                        Get.to(() => BookView(), transition:  Transition.zoom);
                      }, child: Text('Read Book')),
                      AppSizes.gapW10,
                      OutlinedButton(onPressed: (){}, child: Text('View More'))
                    ],
                  )

                ],
              ),
            )
          ],
        )
    );
  }
}
