import 'package:flutter/material.dart';
import 'package:got/firstpage/movedetails.dart';
import 'package:got/firstpage/moviecard.dart';
import 'package:got/firstpage/movieservice.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              UpperBody(),
              SizedBox(height: 15),
              LowerBody(),
            ],
          ),
        ),
      ),
    );
  }
}

class UpperBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Color.fromRGBO(240, 243, 250, 1),
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          title(),
          SizedBox(
            height: 15,
          ),
          bannerImg(),
          SizedBox(
            height: 16,
          ),
          iconMenus(),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget title() {
    return Text("Game of Thrones",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(53, 65, 94, 1),
        ));
  }

  Widget bannerImg() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(6, 81, 215, 1),
                    Color.fromRGBO(255, 255, 255, 0)
                  ],
                )),
            child: Image.asset("assets/images/img1.png")));
  }

  Widget iconMenus() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        iconMenu("Popular", Icons.announcement),
        iconMenu("TV", Icons.tv),
        iconMenu("Movies", Icons.fast_forward),
        iconMenu("Music", Icons.music_video),
        iconMenu("Kids", Icons.kitchen),
      ],
    );
  }

  Widget iconMenu(String name, IconData icon) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 6),
                      blurRadius: 10,
                      spreadRadius: 0,
                      color: Color.fromRGBO(7, 80, 215, 0.3))
                ],
                borderRadius: BorderRadius.circular(75),
                color: Color.fromRGBO(6, 73, 213, 1)),
            height: 48,
            width: 48,
//            color: Color.fromRGBO(6, 73, 213,1),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(53, 65, 94, 1)),
          )
        ],
      ),
    );
  }
}

class LowerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MovieService movieService = MovieService();
    List<MovieDetail> movieList = movieService.fetchMovies();

    List<Widget> widgets = [];
    widgets.add(downtext());
    widgets.add(SizedBox(height: 17));

    for (final movie in movieList) {
      widgets.add(MovieCard(movie));
      widgets.add(SizedBox(height: 17));
    }

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: widgets,
      ),
    );
  }
}

Widget downtext() {
  return Text(
    "Previous Seasons",
    style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.13,
        color: Color.fromRGBO(53, 65, 94, 1)),
  );
}
