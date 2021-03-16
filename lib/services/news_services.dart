import 'dart:convert';
import 'package:newsapp/models/article_models.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/models/articles.dart';

class Api{
  Future<List<Article>> fetchArticle()async{
    final String apiKety = '116b2eaa2f4a4f4886123c28e82ccd1f';
    try{
      http.Response response = await http.get('https://newsapi.org/v2/top-headlines?country=eg&apiKey=$apiKety');
      if(response.statusCode == 200){
        String data = response.body;
        var jsonData = jsonDecode(data);
        Articles articles = Articles.fromjson(jsonData);
        List<Article> articleList = articles.articles.map((e) => Article.fromJson(e)).toList();
        return articleList;
      }else{
        print('StatusCode = ${response.statusCode}');
      }
    }catch(ex){
      print(ex.message);
    }
  }
  Future<List<Article>> fetchArticleByCategory(String category)async{
    final String apiKety = '116b2eaa2f4a4f4886123c28e82ccd1f';
    try{
      http.Response response = await http.get('https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=$apiKety');
      if(response.statusCode == 200){
        String data = response.body;
        var jsonData = jsonDecode(data);
        Articles articles = Articles.fromjson(jsonData);
        List<Article> articleList = articles.articles.map((e) => Article.fromJson(e)).toList();
        return articleList;
      }else{
        print('StatusCode = ${response.statusCode}');
      }
    }catch(ex){
      print(ex.message);
    } 
  }
}