import 'package:epub_view/epub_view.dart';
import 'package:flutter/material.dart';


class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: EpubView(
            onChapterChanged: (v){

            },
              controller: EpubController(
                  document: EpubDocument.openAsset('assets/book/Grace.epub') ,

              )
          ),
        )
    );
  }
}
