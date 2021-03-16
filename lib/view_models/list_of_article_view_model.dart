import 'package:flutter/cupertino.dart';
import 'package:newsapp/models/article_models.dart';
import 'package:newsapp/services/news_services.dart';

class ListOfAricleViewModel extends ChangeNotifier{

  List<Article> _articleList = [];
  List<Article> _articalListByCategory = [];

  Future<void>fetchArticle()async{
    _articleList = await Api().fetchArticle();
    notifyListeners();
  }
  Future<void>fetchArticleByCategoty(String category)async{
    _articalListByCategory = await Api().fetchArticleByCategory(category);
    notifyListeners();
  }
  Article findArticleOnHeadLine(String imagename){
    return _articleList.firstWhere((element) => element.imgUrl == imagename);
  }
  Article findArticleByCategory(String imagename){
    return _articalListByCategory.firstWhere((element) => element.imgUrl == imagename);
  }
  List<Article> get articleList => _articleList;
  List<Article> get articleListByCategoty => _articalListByCategory;  
}
