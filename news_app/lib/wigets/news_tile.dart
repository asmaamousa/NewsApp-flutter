import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {

    return  Column(children: [

      ClipRRect(
        borderRadius: BorderRadius.circular(10),
     child:articleModel.image !=null ? Image.network(articleModel.image!,
     width: double.infinity,
     height: 200,
     fit: BoxFit.cover,
     ): Image.asset("assets/sports.jpg")),
   const SizedBox(height: 12,),

    Text(articleModel.title,
   maxLines: 2,
   overflow: TextOverflow.ellipsis,
   style:const  TextStyle(color: Colors.black,
   
   fontSize: 20,
   fontWeight: FontWeight.w400
   ),
   ),

   const SizedBox(height: 8),

   Text(articleModel.subtitle??'',
   maxLines: 2,
   //overflow: TextOverflow.ellipsis,
   style:const TextStyle(color: Colors.grey,
   
   fontSize: 15,
  
   ),
   ),
      
    ],);
  }
}