import 'package:flutter/material.dart';
import 'package:netflix/ui/home.dart';
import 'package:netflix/ui/premiumscreen.dart';
import 'package:netflix/ui/profile.dart';
class Membershipdetails extends StatefulWidget {
  String country;
  String countryname;

  Membershipdetails({this.country, this.countryname});

  @override
  _MembershipdetailsState createState() => _MembershipdetailsState();
}

class _MembershipdetailsState extends State<Membershipdetails> {
  bool isselcted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Membership"),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.home), onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(
                builder: (_) =>Movieapp(phoneno: "+919872802884",country: widget.country,countryname: widget.countryname,),
              ),
            );

          })
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black,Colors.indigoAccent.withOpacity(0.9),Colors.black],begin: Alignment.topCenter,end: Alignment.bottomCenter)
            ),
            child: Column(
              children: [
                Text("Step  1/3",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),),
                SizedBox(height: 50,),
                Text("Choose a plan:",style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 120,
                    color: Colors.black,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("Plan A(Standard)",style: TextStyle(
                            color: Colors.white,
                          fontSize: 25
                        ),),
                        SizedBox(height: 10,),
                        Text("Rs 299/month",style: TextStyle(
                            color: Colors.white
                        ),),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: RaisedButton(onPressed: (){

                                Navigator.push(context,
                                  MaterialPageRoute(
                                    builder: (_) =>Premium(299,"Standard"),
                                  ),
                                );

                            },child: Text("Select"),))
                      ],
                    ),
                  ),
                ),SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 120,
                    color: Colors.black,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("Plan B(Premium)",style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),),
                        SizedBox(height: 10,),
                        Text("Rs 699/month",style: TextStyle(
                            color: Colors.white
                        ),),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: RaisedButton(onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (_) =>Premium(699,"Premium"),
                                ),
                              );


                            },child: Text("Select"),))
                      ],
                    ),
                  ),
                ), SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 120,
                    color: Colors.black,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("Plan C(Ultra Premium)",style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),),
                        SizedBox(height: 10,),
                        Text("Rs 999/year",style: TextStyle(
                            color: Colors.white
                        ),),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: RaisedButton(onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (_) =>Premium(999,"Ultra Premium"),
                                ),
                              );
                            },child: Text("Select"),))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: (){

                Navigator.push(context,
                MaterialPageRoute(
                builder: (_) =>Profile(),
                ),
                );

                },child: Text("Cancel"),)
              ],
            ),
          )

        ],
      ),
    );

  }
}
