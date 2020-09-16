import 'package:flutter/material.dart';
import 'package:netflix/modal/languageinfo.dart';
import 'package:netflix/widgets/languagegrid.dart';

class Language extends StatelessWidget {
  final List<Languageinfo> categorylist = Languageinfo.getLanguageinfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Languages"),
        centerTitle: true,
        backgroundColor: Colors.black,

      ),
      body: GridView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: categorylist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          itemBuilder: (ctx,i) => Languagegrid(categorylist[i].title,categorylist[i].images)
      )
    );
  }
}
