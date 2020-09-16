import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/ui/fingerprint.dart';
import 'package:netflix/ui/home.dart';
import 'package:netflix/ui/walletscreen.dart';
import 'membershipscreen.dart';
int points=50;
class Profile extends StatelessWidget {
  String phoneno ;
  String country;
  String countryname;

  Profile({this.phoneno, this.country, this.countryname});

  @override
  Widget build(BuildContext context) {
    TextStyle liststyle = TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold
    );
    return Scaffold(

      appBar: AppBar(
        title: Text("My Account"),
        centerTitle: true,
        backgroundColor: Colors.black87,
        actions: [
          RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Movieapp(phoneno: phoneno,country: country,countryname: countryname,),
                  ),
                );
              },

              child: Icon(Icons.home,size: 40)
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height+30,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.black,Colors.indigoAccent.withOpacity(0.9),Colors.black],begin: Alignment.topCenter,end: Alignment.bottomCenter)
            ),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                        color: Colors.white
                    ),


                    child: Icon(Icons.person_outline,color: Colors.black,size: 70,)

                ),
                SizedBox(height: 20,),
                Text("Atul",style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),),
                Divider(thickness:2,color: Colors.black87,),
                ListTile(
                  title: Text("Email",style: liststyle,),
                  subtitle: Text("Aggarwal.atul2509@gmail.com",style: liststyle,),
                ),
                ListTile(
                  title: Text("Username",style: liststyle,),
                  subtitle: Text("Atul9052",style: liststyle,),
                ),
                Text("Edit profile",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  backgroundColor: Colors.black
                ),),
                Divider(color: Colors.black87,thickness: 2,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text("Subscription",style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:12.0),
                        child: Text("Premium",style: liststyle,),
                      ),
                    ],
                  ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text("Valid Till",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:12.0),
                      child: Text("10/08/2020",style: liststyle,),
                    ),
                  ],
                ),SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (_) =>Membershipdetails(),
                      ),
                    );
                  },
                  child: Text("View your Subscription",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    backgroundColor: Colors.black
                  ),),
                ),
                Divider(color: Colors.black87,thickness: 2,),
                Text("Membership Wallet",style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  fontWeight: FontWeight.bold
                ),), SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text("Available Points:",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:12.0),
                      child: Text("$points",style: liststyle,),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (_) =>Wallet(),
                      ),
                    );


                  },
                  child: Text("View your Wallet",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      backgroundColor: Colors.black
                  ),),
                ),
                SizedBox(height: 20,),
Divider(color: Colors.black,height: 2,),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => MyHomePage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text("Sign out",style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:12.0),
                        child: Icon(Icons.power_settings_new,color: Colors.red,size: 40,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
