import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/Screens/byCategory_article_description.dart';
import 'package:newsapp/view_models/list_of_article_view_model.dart';
import 'package:provider/provider.dart';

class BusinessArticle extends StatefulWidget {
  static String id = 'business';
  @override
  _BusinessArticleState createState() => _BusinessArticleState();
}

class _BusinessArticleState extends State<BusinessArticle> {
  @override
  void initState() {
    super.initState();
    Provider.of<ListOfAricleViewModel>(context,listen: false).fetchArticleByCategoty('technology');
  }
  @override
  Widget build(BuildContext context) {
    var items = Provider.of<ListOfAricleViewModel>(context).articleListByCategoty;
    return Scaffold(
      appBar: AppBar(
        title: Text('التجاره - Business',style: GoogleFonts.aBeeZee()),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: items.length  == 0 ? Center(child: CircularProgressIndicator()) : ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, ByCategoryArticleDescription.id,arguments: items[index].imgUrl);
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                child: Card(
                  elevation: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right:8),
                          child: Text(
                            items[index].title,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize:16,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.black54,
                            ),
                          ),
                          child: SizedBox(
                            width: 150,
                            child: Image.network(items[index].imgUrl == null ? "https://via.placeholder.com/100" :items[index].imgUrl),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}