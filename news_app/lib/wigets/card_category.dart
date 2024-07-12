import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategryCard extends StatelessWidget {
   const CategryCard ({super.key, required this.category});
   final CategoryModel category;
  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.only(right: 20),
      child: GestureDetector(onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(category: category.categoryName,);
        })
        );
      },
        child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
            image:  DecorationImage(image: AssetImage(category.image),
            fit: BoxFit.fill
            ),
            color: Colors.orange,
              
            ),
            width: 200,
            height: 120,
              child: Center(
                child:  Text(category.categoryName,style: const TextStyle(color: Colors.white,
                fontSize: 18
                )
                
                ,),
              ),
          
           
            ),
      ),
    ) ;
  }
}