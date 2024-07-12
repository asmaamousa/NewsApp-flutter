import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'card_category.dart';



class CategoriesListview extends StatelessWidget {
 const  CategoriesListview({
    super.key,
  });
    final List<CategoryModel> categories=const [
      CategoryModel(
      image: 'assets/business.jpg',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/sports.jpg',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/general.jpg',
      categoryName: 'General',
    ),
    ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height:120 ,
      child: 
      ListView.builder(
        itemCount: categories.length,
        scrollDirection:Axis.horizontal,
        itemBuilder: (context,index){
          return  CategryCard(category: categories[index]);
        })
      /*CustomScrollView(scrollDirection:Axis.horizontal,
      //scrollBehavior:ScrollBehavior(),
             slivers: [SliverToBoxAdapter (child: CategryCard(image: 'assets/entertaiment.avif', text: "sports"),),
             SliverToBoxAdapter (child:CategryCard(image: 'assets/entertaiment.avif', text: "sports") ,),
             SliverToBoxAdapter (child:CategryCard(image: 'assets/entertaiment.avif', text: "sports") ,),
      ],
      ),*/
    );
  }}