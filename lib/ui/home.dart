import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/modal/info.dart';
import 'package:netflix/modal/mylistmodal.dart';
import 'package:netflix/ui/drawer.dart';
import 'filterscreen.dart';
import 'moviescreen.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
class Movieapp extends StatefulWidget {
String phoneno ;
String country;
String countryname;
  Movieapp({this.phoneno,this.country,this.countryname});
  @override
  _MovieappState createState() => _MovieappState();
}
class _MovieappState extends State<Movieapp> {
  VideoPlayerController playerController;
  ScrollController _controller;
  void initState() {
    _controller = ScrollController();
    super.initState();
    playerController = VideoPlayerController.asset("assets/videos/ultron.mp4")
      ..initialize().then((_) {
        setState(() {
        });
      });
    playerController.play();
    playerController.setLooping(true);
    playerController.setVolume(10.0);
  }
  _onStartScroll(ScrollMetrics metrics) {
    setState(() {
      playerController.pause();
    });
  }
  _onUpdateScroll(ScrollMetrics metrics) {
    setState(() {
      playerController.pause();
    });
  }
  _onEndScroll(ScrollMetrics metrics) {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        playerController.pause();
      });
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        playerController.play();
      });
    }
  }


  @override

 final List<Movie> movielist = Movie.getmovies();
  TextStyle headingstyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    color: Colors.white
  );
  TextStyle titlestyle = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
      color: Colors.red
  );
  @override
//  Widget image_carousel =  Container(
//    height: 300.0,
//    child:   ClipRRect(
//      borderRadius: BorderRadius.circular(20),
//      child: Carousel(
//        boxFit: BoxFit.cover,
//        images: [
//          AssetImage('assets/thenext.jpg'),
//          AssetImage('assets/call.jpg'),
//          AssetImage('assets/call.jpg'),
//          AssetImage('assets/call.jpg'),
//          AssetImage('assets/thenext.jpg'),
//          AssetImage('assets/call.jpg'),
//          AssetImage('assets/call.jpg'),
//          AssetImage('assets/call.jpg'),
//        ],
//        autoplay: false,
////      animationCurve: Curves.fastOutSlowIn,
////      animationDuration: Duration(milliseconds: 1000),
//        dotSize: 10.0,
//        indicatorBgPadding: 2.0,
//      ),
//    ),
//  );
  Widget build(BuildContext context) {
    final mylistmovie =Provider.of<Cart>(context);
    return Scaffold(

      drawer: Drawer(
        elevation: 20,
child:drawer(image:widget.country,phoneno: widget.phoneno,countryname: widget.countryname,country: widget.country,playerController: playerController,)
      ),
      backgroundColor: Colors.black,
appBar: AppBar(

    actions: <Widget>[
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/logo.png"))
        ),
      ),
    InkWell(
        onTap: (){
          playerController.pause();
          Navigator.push(context,
          MaterialPageRoute(
            builder: (_) => AllCountries(),
          ),
        );


        },
        child: Center(child: Text("search",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),)))


//    InkWell(
//      onTap: (){
//        setState(() {
//          playerController.pause();
//        });
//        Navigator.push(
//          context,
//          MaterialPageRoute(
//            builder: (_) => Filterscreen(),
//          ),
//        );
//
//      },
//      child: Container(
//        height: 20,
//        width: 130,
//        child: Padding(
//          padding: const EdgeInsets.only(left:15.0),
//          child: Center(
//            child: Text("filter",style: TextStyle(
//              fontSize: 20,
//              fontWeight: FontWeight.bold
//            ),),
//          )
//        ),
//      ),
//    )
  ],
  backgroundColor: Colors.black,
),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollStartNotification) {
            _onStartScroll(scrollNotification.metrics);
          } else if (scrollNotification is ScrollUpdateNotification) {
            _onUpdateScroll(scrollNotification.metrics);
          } else if (scrollNotification is ScrollEndNotification) {
            _onEndScroll(scrollNotification.metrics);
          }
        },
        child: ListView(
          scrollDirection: Axis.vertical,
          controller: _controller,
          children: <Widget>[
            Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  itemCount: 1,
                  itemBuilder: (BuildContext, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child:  Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              child: AspectRatio(
                                  aspectRatio: 16 / 9,
                                  child: Container(
                                      height: 200,
                                      child: playerController.value.initialized?AspectRatio(aspectRatio: 16/9,child: VideoPlayer(playerController),):Container(child: Image.asset("assets/images/ultron.jpg"),)
                                  )),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  ),
            ),

            Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("${widget.countryname} Movies",style: headingstyle,),
                         ),
            Container(
              height: 150.0,
              width: 70,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movielist.length,
                  itemBuilder: (BuildContext, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: InkWell(
                        onTap:  () {
                          setState(() {
                            playerController.pause();
                          });
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => MovieScreen(movie: movielist[index]),
                          ),
                        );
                  },
                        child: Column(
                          children: <Widget>[
                            Stack(
                              alignment: Alignment.bottomCenter,
                        children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 150.0,
                                  width: 100,
                                  child: Image.asset(movielist[index].images,fit: BoxFit.cover,),
                                ),
                              ),
                          Container(
                            height: 30.0,
                            width: MediaQuery.of(context).size.width/4,
                            color: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Play ",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),),
                                InkWell(
                                  onTap: (){
                                    mylistmovie.additem(movielist[index].title,movielist[index].year,movielist[index].rated,movielist[index].released,movielist[index].runtime,movielist[index].genre,movielist[index].actors,movielist[index].plot,movielist[index].director,movielist[index].images);

                                  },
                                  child: Text("+",style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white
                                  ),),
                                )
                              ],
                            ),
                          ),
                        ]
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${widget.countryname} Tv Shows",style: headingstyle,),
            ),
            Container(
              height: 150.0,
              width: 70,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movielist.length,
                  itemBuilder: (BuildContext, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: InkWell(
                        onTap:  () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => MovieScreen(movie: movielist[index]),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Container(
                                      height: 150.0,
                                      width: 100,
                                      child: Image.asset(movielist[index].images,fit: BoxFit.cover,),
                                    ),
                                  ),
                                  Container(
                                    height: 30.0,
                                    width: MediaQuery.of(context).size.width/4,
                                    color: Colors.black,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Play ",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ),),
                                        InkWell(
                                          onTap: (){
                                            mylistmovie.additem(movielist[index].title,movielist[index].year,movielist[index].rated,movielist[index].released,movielist[index].runtime,movielist[index].genre,movielist[index].actors,movielist[index].plot,movielist[index].director,movielist[index].images);

                                          },
                                          child: Text("+",style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white
                                          ),),
                                        )
                                      ],
                                    ),
                                  ),
                                ]
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Latest ${widget.countryname} Shows",style: headingstyle,),
            ),
            Container(
              height: 150.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movielist.length,
                  itemBuilder: (BuildContext, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child:  InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => MovieScreen(movie: movielist[index]),
                            ),
                          );
                        },
                        child:Column(
                          children: <Widget>[
                            Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Container(
                                      height: 150.0,
                                      width: 100,
                                      child: Image.asset(movielist[index].images,fit: BoxFit.cover,),
                                    ),
                                  ),
                                  Container(
                                    height: 30.0,
                                    width: MediaQuery.of(context).size.width/4,
                                    color: Colors.black,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Play ",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ),),
                                        InkWell(
                                          onTap: (){
                                            mylistmovie.additem(movielist[index].title,movielist[index].year,movielist[index].rated,movielist[index].released,movielist[index].runtime,movielist[index].genre,movielist[index].actors,movielist[index].plot,movielist[index].director,movielist[index].images);
                                          },
                                          child: Text("+",style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white
                                          ),),
                                        )
                                      ],
                                    ),
                                  ),
                                ]
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Latest ${widget.countryname} Movies",style: headingstyle,),
            ),
            Container(
              height: 150.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movielist.length,
                  itemBuilder: (BuildContext, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child:  InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => MovieScreen(movie: movielist[index]),
                            ),
                          );
                        },
                        child:Column(
                          children: <Widget>[
                            Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Container(
                                      height: 150.0,
                                      width: 100,
                                      child: Image.asset(movielist[index].images,fit: BoxFit.cover,),
                                    ),
                                  ),
                                  Container(
                                    height: 30.0,
                                    width: MediaQuery.of(context).size.width/4,
                                    color: Colors.black,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Play ",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ),),
                                        InkWell(
                                          onTap: (){
                                            mylistmovie.additem(movielist[index].title,movielist[index].year,movielist[index].rated,movielist[index].released,movielist[index].runtime,movielist[index].genre,movielist[index].actors,movielist[index].plot,movielist[index].director,movielist[index].images);
                                          },
                                          child: Text("+",style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white
                                          ),),
                                        )
                                      ],
                                    ),
                                  ),
                                ]
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      )
    );
  }
}

