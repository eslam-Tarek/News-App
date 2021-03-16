import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Screens/article_description.dart';
import 'package:newsapp/Screens/business_article.dart';
import 'package:newsapp/Screens/health_article.dart';
import 'package:newsapp/Screens/home_screen.dart';
import 'package:newsapp/Screens/sport_article.dart';
import 'package:newsapp/Screens/byCategory_article_description.dart';
import 'package:newsapp/Screens/technology_article.dart';
import 'package:newsapp/view_models/list_of_article_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListOfAricleViewModel>(
      create: (context)=>ListOfAricleViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner:false,
        home: AnimatedSplashScreen(
          splash: Image.asset('Images/logo_news_app.jpg'),
          nextScreen: MyHomePage(),
          splashTransition: SplashTransition.fadeTransition,
          duration: 3000,
       ),
       routes: {
         MyHomePage.id:(context)=> MyHomePage(),
         ArticleDscription.id:(context)=> ArticleDscription(),
         SportArticle.id:(context)=> SportArticle(),
         ByCategoryArticleDescription.id :(context)=> ByCategoryArticleDescription(),
         HeathArticle.id:(context)=> HeathArticle(),
         BusinessArticle.id:(context)=>BusinessArticle(),
         TechnologyArticle.id:(context)=>TechnologyArticle(),
       },
      ),
    );
  }
}
