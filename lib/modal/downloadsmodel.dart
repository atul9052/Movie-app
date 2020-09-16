import 'package:flutter/material.dart';
class Mydownloadmovie {
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

  Mydownloadmovie(this.title, this.year, this.rated, this.released, this.runtime,
      this.genre, this.plot, this.actors, this.director, this.images);
}

class Carts with ChangeNotifier {
  Map<String, Mydownloadmovie> _downloaditems = {};

  Map<String, Mydownloadmovie> get items {
    return {..._downloaditems};
  }

  int get itemcount {
    return _downloaditems.length;
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
      String images) {
    if (_downloaditems.containsKey(title)) {
      return ;}
    else{
      _downloaditems.putIfAbsent(title, () => Mydownloadmovie(title,year,rated,released,runtime,genre,actors,plot,director,images));
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
