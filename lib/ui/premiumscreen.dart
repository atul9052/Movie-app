import 'package:flutter/material.dart';
import 'package:netflix/ui/profile.dart';
class Premium extends StatefulWidget {
  int price;
  String membership;

  Premium(this.price,this.membership);
  @override



  _PremiumState createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  int price1;
  getCountries() async {
    return widget.price;
  }
  void initState() {
    getCountries().then((data) {
      setState(() {
        widget.price = price1 = data;
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plan"),
        centerTitle: true,
        backgroundColor: Colors.black,
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
          Text("Step 2/3",style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),),
          SizedBox(height: 50,),
          Text("${widget.membership} Membership:",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 35
          ),),
          SizedBox(height: 20,),
          Text("${widget.price}/Month",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),),
          SizedBox(height: 40,),
          Text("Balance points:         $points",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30
          ),),
          SizedBox(height: 40,),
          RaisedButton(onPressed: (){
setState(() {
  price1 = price1 - points;
  points=0;
});

          },child: Text("Click here to Avail Points"),),
          SizedBox(height: 40,),
          Text("Net Total Amount:         $price1",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),),
          RaisedButton(onPressed: (){
                      },child: Text("Continue"),),
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
