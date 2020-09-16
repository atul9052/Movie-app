import 'package:flutter/material.dart';
class Mylistmovie {
  String title;
  String year;
  String rated;
  String released;
  String runtime;
  String genre;
  String actors;
  String plot;
  String director;
  String images;

  Mylistmovie(this.title, this.year, this.rated, this.released, this.runtime,
      this.genre, this.plot, this.actors, this.director, this.images);
}

class Cart with ChangeNotifier {
  Map<String, Mylistmovie> _items = {};

  Map<String, Mylistmovie> get items {
    return {..._items};
  }

  int get itemcount {
    return _items.length;
  }

  void additem(  String title,
  String year,
  String rated,
  String released,
  String runtime,
  String genre,
  String actors,
  String plot,
  String director,
  String images,
      ) {
    if (_items.containsKey(title)) {
      return ;}
    else{
      _items.putIfAbsent(title, () => Mylistmovie(title,year,rated,released,runtime,genre,actors,plot,director,images));
    }
    notifyListeners();
  }
//  void removeitem(String id){
//    _items.remove(id);
//    notifyListeners();
//  }
//  void removesingleitem(String id){
//    if(!_items.containsKey(id)){
//      return ;}
//    if(_items[id].quantity>1){
//      _items.update(id,(existingcartitem) => Cartitem(
//          id: DateTime.now().toString(),
//          name: existingcartitem.name,
//          quantity: existingcartitem.quantity - 1,
//          price: existingcartitem.price));
//    }
//    notifyListeners();
//  }
//  double get totalamount{
//    var total = 0.0;
//    _items.forEach((key, cartitem) {
//      total+=cartitem.price*cartitem.quantity;
//    });
//    return total;
//  }
//  void clear(){
//    _items = {};
//    notifyListeners();
//
//  }
}
