class Article{
  final String title;
  final String description;
  final String imgUrl;
  final String articleUrl;

  Article({this.title, this.description, this.imgUrl, this.articleUrl});
  factory Article.fromJson(Map<String,dynamic> jsonData){
    return Article(
      title: jsonData['title'],
      description: jsonData['description'],
      imgUrl: jsonData['urlToImage'],
      articleUrl: jsonData['url']
    );
  }
}