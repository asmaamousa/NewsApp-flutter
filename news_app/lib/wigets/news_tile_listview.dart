
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import 'package:news_app/wigets/news_tile.dart';

class NewsListview extends StatelessWidget {
  final List<ArticleModel> articles;
   const  NewsListview({super.key,required this.articles});

 

  @override
  Widget build(BuildContext context) {
    return  SliverList( delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index){
              return  Padding(
                padding: const EdgeInsets.only(top:35),
                child:  NewsTile(articleModel: articles[index],),
              );
            }),)  ;
  }
}


