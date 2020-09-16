import 'package:flutter/material.dart';
// ignore: must_be_immutable
class LanguageInfoGrid extends StatelessWidget {
  String image;
  LanguageInfoGrid(this.image);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        height: 50,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(30),

            child: Center(child: Image.asset(image,)))
        ,

      ),
    );
  }
}
