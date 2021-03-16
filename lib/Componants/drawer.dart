import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/Screens/business_article.dart';
import 'package:newsapp/Screens/health_article.dart';
import 'package:newsapp/Screens/home_screen.dart';
import 'package:newsapp/Screens/sport_article.dart';
import 'package:newsapp/Screens/technology_article.dart';

Widget drawer(context){
  return  Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          child: Image.asset('Images/logo_news_app.jpg'),
        ),
        ListTile(
          title: Text(
            'اهم الاخبار',textAlign: TextAlign.right,
            style: GoogleFonts.aBeeZee(
              fontSize: 22,
            ),
          ),
          onTap: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, MyHomePage.id);
          },
        ),
        ListTile(
          title: Text(
            'Sport - الرياضه',textAlign: TextAlign.right,
            style: GoogleFonts.aBeeZee(
              fontSize: 22,
            ),
          ),
          onTap: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, SportArticle.id);
          },
        ),
         ListTile(
          title: Text(
            'Heath - الصحه',textAlign: TextAlign.right,
            style: GoogleFonts.aBeeZee(
              fontSize: 22,
            ),
          ),
          onTap: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, HeathArticle.id);
          },
        ),
        ListTile(
          title: Text(
            'Business - التجارة',textAlign: TextAlign.right,
            style: GoogleFonts.aBeeZee(
              fontSize: 22,
            ),
          ),
          onTap: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, BusinessArticle.id);
          },
        ),
        ListTile(
          title: Text(
            'Technology - التكنولوجيا',textAlign: TextAlign.right,
            style: GoogleFonts.aBeeZee(
              fontSize: 22,
            ),
          ),
          onTap: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, TechnologyArticle.id);
          },
        ),
      ],
    ),
  );
}  