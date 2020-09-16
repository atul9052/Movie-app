import 'package:flutter/material.dart';
import 'package:netflix/modal/mylistmodal.dart';
import 'package:netflix/widgets/movieitems.dart';
import 'package:provider/provider.dart';
class Mylistscreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final cart =Provider.of<Cart>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("MY LIST"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (ctx,i)=>Cartitems(
                    cart.items.values.toList()[i].title,
                    cart.items.values.toList()[i].year,
                    cart.items.values.toList()[i].rated,
                    cart.items.values.toList()[i].released,
                    cart.items.values.toList()[i].runtime,
                    cart.items.values.toList()[i].genre,
                    cart.items.values.toList()[i].actors,
                    cart.items.values.toList()[i].plot,
                    cart.items.values.toList()[i].director,
                    cart.items.values.toList()[i].images,

                )
            ),
          ),

        ],
      ),
    );
  }
}
