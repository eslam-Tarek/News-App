import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appBar(){
return AppBar(
  leading:IconButton(
    icon: Icon(Icons.search),
    onPressed: (){},
   ),
    title: Text(
    'News Cloud',
    style:GoogleFonts.aBeeZee(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
  ),
    centerTitle: true,
    backgroundColor: Colors.red[900],
  );
}