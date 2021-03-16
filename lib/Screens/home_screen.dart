import 'package:flutter/material.dart';
import 'package:newsapp/Componants/app_bar.dart';
import 'package:newsapp/Componants/drawer.dart';
import 'package:newsapp/Componants/important_news.dart';
import 'package:newsapp/view_models/list_of_article_view_model.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  static String id = 'homepage';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  
  @override
  void initState() {
    super.initState();
    Provider.of<ListOfAricleViewModel>(context,listen: false).fetchArticle();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:drawer(context),
      appBar: appBar(),
      body:ImportantNews(), 
    ); 
  }
}
