import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/wigets/circular_indicator.dart';
import 'package:news_app/wigets/error_message.dart';
import 'package:news_app/wigets/news_tile_listview.dart';


class NewsListViewBulider extends StatefulWidget {
  const NewsListViewBulider({super.key, required this.category});
final String category;
  @override
  State<NewsListViewBulider> createState() => _NewsListViewBuliderState();
}


class _NewsListViewBuliderState extends State<NewsListViewBulider> {
var future;
  @override
  void initState() {
    super.initState();
future=NewsService(Dio()).getnews(category: widget.category);
  }
  @override

  Widget build(BuildContext context) {
    return  FutureBuilder<List<ArticleModel>>
    (future: future,
    builder:(context,snapshot){
      
         if (snapshot.hasData){
       return  NewsListview(articles:snapshot.data!);
       }else if(snapshot.hasError){
       return  const  ErrorMessage();
       }

       else{
            return const CircularIndicator();
       }
    }
    );
  }
}









//الحل الصعب

/*class NewsListViewBulider extends StatefulWidget {
  const NewsListViewBulider({
    super.key,
  });

  @override
  State<NewsListViewBulider> createState() => _NewsListViewBuliderState();
}

class _NewsListViewBuliderState extends State<NewsListViewBulider> {
  bool isloading=true;
  List<ArticleModel> articles=[];
  @override
  void initState() {
 
    super.initState();
    getGeneralnews();


  }
  Future<void> getGeneralnews() async {
    articles= await NewsService(Dio()).getnews();
    isloading=false;
    setState(() {
     //عندنا التطبيق لما يتنفذ مش بيستنى الدالة دي تتنفذ بيكمل باقي الكود وبالتالي الليست اللي فوق هتبقى فاضية وعلشان البيانات تظهر لازم نعمل هوت ريلود ف سيت ستيت اي قيمة بتتغير بيخلي الكود يقراها
     });}

  @override
  Widget build(BuildContext context) {
    return isloading?
    const  SliverFillRemaining(// علشان اخلي عنصر ف النص في كستوم سكرول فيو
      child:Center(child: CircularProgressIndicator())):
      articles.isEmpty?const  Text("oops,the is aproblme"):
      NewsListview(articles: articles);
  }
}
*/
