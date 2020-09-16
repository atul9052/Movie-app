import 'package:flutter/material.dart';
import 'package:netflix/modal/downloadsmodel.dart';
import 'package:netflix/modal/info.dart';
import 'package:netflix/widgets/downloaditems.dart';
import 'package:provider/provider.dart';
class Downloadscreen extends StatelessWidget {
Movie movie;
Downloadscreen({this.movie});
  @override
  Widget build(BuildContext context) {
    final carts =Provider.of<Carts>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("MY DOWNLOADS"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[

          Expanded(
            child: ListView.builder(
                itemCount: carts.items.length,
                itemBuilder: (ctx,i)=>Downloaditems(
                    carts.items.values.toList()[i].title,
                    carts.items.values.toList()[i].year,
                    carts.items.values.toList()[i].rated,
                    carts.items.values.toList()[i].released,
                    carts.items.values.toList()[i].runtime,
                    carts.items.values.toList()[i].genre,
                    carts.items.values.toList()[i].actors,
                    carts.items.values.toList()[i].plot,
                    carts.items.values.toList()[i].director,
                    carts.items.values.toList()[i].images,

                )
            ),
          ),
        ],
      ),
    );
  }
}
