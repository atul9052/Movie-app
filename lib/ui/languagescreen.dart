import 'package:flutter/material.dart';
import 'package:netflix/widgets/languageinfo.dart';
class Languagescreen extends StatelessWidget {
  String title;
  List<String> images;
  Languagescreen(this.title,this.images);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          itemBuilder: (ctx,i) => LanguageInfoGrid(images[i])
      ),
    );
  }
}
