import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/models/article_models.dart';
import 'package:newsapp/view_models/list_of_article_view_model.dart';
import 'package:provider/provider.dart';

class ArticleDscription extends StatefulWidget {
  static String id = 'descriptionArticle';
  @override
  _ArticleDscriptionState createState() => _ArticleDscriptionState();
}

class _ArticleDscriptionState extends State<ArticleDscription> {
  @override
  Widget build(BuildContext context) {
    final i = ModalRoute.of(context).settings.arguments as String;
    Article item = Provider.of<ListOfAricleViewModel>(context).findArticleOnHeadLine(i);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('تفاصيل الخبر ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(item.imgUrl),
            SizedBox(height:22),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20,vertical: 40),
              child: Container(
                child: Text(
                  item.description,
                  textAlign: TextAlign.end,
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}