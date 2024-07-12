import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService( this.dio);

   Future<List<ArticleModel>> getnews({required String category})async{
    try {
  Response response=await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=7872fe2f89ff48cba11a652de3f86b26&category=$category");
    Map<String,dynamic> jasondata =response.data;
    List<dynamic> articles=jasondata['articles'];
    List <ArticleModel> articlelist=[];
    for(var article in articles){
   ArticleModel articleModel=ArticleModel.fromJson(article);
   articlelist.add(articleModel);
    }
   return articlelist;
}  catch (e) {
  return [];
}
  }
}