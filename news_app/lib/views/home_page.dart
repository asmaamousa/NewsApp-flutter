

import 'package:flutter/material.dart';
import 'package:news_app/wigets/categories_listview.dart';
import 'package:news_app/wigets/news_listview_builder.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title:const Row(
          mainAxisSize: MainAxisSize.min
          ,children: [
          Text( "News",style: TextStyle(color: Colors.black),),
          Text( "Cloud",style: TextStyle(color: Colors.orange)),
        ],)//const Text( "NewsCloud"),
        
        ),
        body:const  Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(physics:  BouncingScrollPhysics()
            ,slivers: [
            SliverToBoxAdapter(child:CategoriesListview()),
            SliverToBoxAdapter(child: SizedBox(height: 35),),
                NewsListViewBulider(category: 'general',)

          ],),
        )//CategoriesListview()
        //const CategryCard(image: 'assets/entertaiment.avif', text: "sports")
    );
  }
  

}

