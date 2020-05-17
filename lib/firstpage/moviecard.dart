import 'package:flutter/material.dart';
import 'package:got/firstpage/movedetails.dart';
import 'package:got/firstpage/ratings.dart';

class MovieCard extends StatelessWidget {
  MovieDetail movie;

  MovieCard(this.movie) {
    print(movie.image);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 110,
                height: 110,
                color: Colors.red,
                child: FittedBox(
                    fit: BoxFit.cover, child: Image.asset(movie.image)),
              ),
              Positioned(
                  top: 40,
                  left: 40,
                  child: Container(
                      //color:Colors.green,
                      child: Icon(
                    Icons.play_circle_filled,
                    color: Colors.blue,
                    size: 40,
                  )))
            ],
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    movie.title,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.17,
                        color: Color.fromRGBO(53, 65, 94, 1)),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  RatingIcon(startRatings: movie.startRating, ratings: movie.rating,),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    movie.date,
                    style: TextStyle(
                        fontSize: 10,
                        letterSpacing: 0.14,
                        color: Color.fromRGBO(119, 137, 181, 1)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Explore Episodes list >",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.14,
                        color: Color.fromRGBO(6, 96, 219, 1)),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: Colors.red,
            ),
            alignment: Alignment.topLeft,
            child: Icon(Icons.file_download),
          )
        ],
      ),
    );
  }
}
