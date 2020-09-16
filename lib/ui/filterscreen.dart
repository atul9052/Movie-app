import 'package:flutter/material.dart';
import 'package:netflix/modal/filterlist.dart';

import 'Movieinfo.dart';



class AllCountries extends StatefulWidget {

  @override
  _AllCountriesState createState() => _AllCountriesState();
}

class _AllCountriesState extends State<AllCountries> {
   List<FilterModal> countriesmodal = FilterModal.getCategoryinfo();
  List<FilterModal> filtercountriesmodal = [];
//  List <String> images = [
//  "assets/images/horror1.jpg",
//  "assets/images/endgame.jpg","assets/images/horror5.jpg","assets/images/thriller1.jpg",
//    "assets/images/thriller3.jpg",
//  "assets/images/horror4.jpg","assets/images/horror2.jpg",
//        "assets/images/horror3.jpg",];
  bool isSearching = false;

  getCountries() async {
    return countriesmodal;
  }

  @override
  void initState() {
    getCountries().then((data) {
      setState(() {
        countriesmodal = filtercountriesmodal = data;
      });
    });
    super.initState();
  }

  void _filterCountries(value) {
    setState(() {
      filtercountriesmodal = countriesmodal
          .where((country) =>
          country.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.black,
        centerTitle: false,
        title: !isSearching
            ? Text('Movies')
            : TextField(
          onChanged: (value) {
            _filterCountries(value);
          },
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "Search Here",
              hintStyle: TextStyle(color: Colors.white)),
        ),
        actions: <Widget>[
          isSearching
              ? IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              setState(() {
                this.isSearching = false;
                filtercountriesmodal = countriesmodal;
              });
            },
          )
              : IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                this.isSearching = true;
              });
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: filtercountriesmodal.length > 0
            ? ListView.builder(
            itemCount: filtercountriesmodal.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (_) => Movieinfo(filtercountriesmodal[index].title,filtercountriesmodal[index].images),
                    ),
                  );


                },
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 8),
                    child: Text(
                      filtercountriesmodal[index].title,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              );
            })
            : Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}