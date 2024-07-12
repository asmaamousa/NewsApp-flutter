import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/home_page.dart';


void main() {
 
  runApp(const MyApp());
}


/// More examples see https://github.com/cfug/dio/blob/main/example

  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    );
  }
}
