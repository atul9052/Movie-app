import 'package:flutter/material.dart';
class moviegrid extends StatelessWidget {
  String image;
  moviegrid(this.image);
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
