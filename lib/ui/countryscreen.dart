import 'package:flutter/material.dart';
import 'package:netflix/modal/countryinfo.dart';
import 'package:netflix/ui/home.dart';
class country extends StatelessWidget {
  final List<Country> countrylist = Country.getcountry();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select your country"),
        centerTitle: true,
        backgroundColor: Colors.black,

      ),
      body: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,

                  itemCount: countrylist.length,
                  itemBuilder: (BuildContext, int index) {
                    return ListTile(
                      leading: Container(
height: 50,
                        width: 50,
                        child: Image.asset(countrylist[index].image,fit: BoxFit.cover,),
                      ),
                      onTap:() => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Movieapp(phoneno: "+9872802884",country: countrylist[index].image,countryname: countrylist[index].title,),
                        ),
                      ),

                      title: Text(countrylist[index].title,style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),

                    );
                  }),
            ),
          ]
      ),
    );
  }
}
