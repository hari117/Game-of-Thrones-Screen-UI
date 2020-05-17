import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 387,
                color: Colors.green,
                child: Stack(
                  children: <Widget>[
                    Container(
                      //color: Colors.red,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/img5.png'),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(4, 62, 166, 1),
                              Color.fromRGBO(255, 255, 255, 0),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )),
                    ),
                    Positioned(
                      top: 148,
                      child: Container(
                        width: 375,
                        height: 239,
                        //    color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(
                                height: 130,
                                width: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.cloud_circle,
                                      size: 8,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(Icons.cloud_circle,
                                      size: 8,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(Icons.cloud_circle,
                                      size: 8,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(Icons.cloud_circle,
                                      size: 8,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ],
                              ),
                              Text(
                                "Winter is Here",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    letterSpacing: 0.38,
                                    color: Color.fromRGBO(255, 255, 255, 1)),
                              ),
                              Text(
                                "Game of Thornes - season 8",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    letterSpacing: 0.2,
                                    color: Color.fromRGBO(246, 253, 255, 1)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              color: Color.fromRGBO(240, 243, 250, 1),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color.fromRGBO(6, 98, 220, 1),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color.fromRGBO(6, 98, 220, 1),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color.fromRGBO(6, 98, 220, 1),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color.fromRGBO(6, 98, 220, 1),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color.fromRGBO(6, 98, 220, 1),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "9,5",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.23,
                              color: Color.fromRGBO(6, 98, 220, 1),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "10,070 Ratings",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 0.17,
                              color: Color.fromRGBO(119, 137, 181, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          MaterialButton(
                              child: Text("Season 8",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    letterSpacing: 0.14,
                                  )),
                              onPressed: () {},
                              color: Color.fromRGBO(7, 78, 215, 1),
                              textColor: Colors.white,
                              minWidth: 97,
                              height: 30,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          SizedBox(
                            width: 10,
                          ),
                          MaterialButton(
                              child: Text(
                                "Season 7",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    letterSpacing: 0.14,
                                    color: Color.fromRGBO(119, 137, 181, 1)),
                              ),
                              onPressed: () {},
                              color: Colors.white38,
                              textColor: Colors.white,
                              minWidth: 97,
                              height: 30,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          SizedBox(
                            width: 10,
                          ),
                          MaterialButton(
                              child: Text("Season 6",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                      letterSpacing: 0.14,
                                      color: Color.fromRGBO(119, 137, 181, 1))),
                              onPressed: () {},
                              color: Colors.white38,
                              minWidth: 97,
                              height: 30,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("About",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.2,
                              color: Color.fromRGBO(53, 65, 94, 1))),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Jon and Daenerys arrive in Watterfell and are met with \n "
                        "skepticism.Sam Learns about the fate of his family.Cersei gives \n"
                        "Euro reward he aims for.",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.14,
                          color: Color.fromRGBO(53, 65, 94, 1),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        // image: AssetImage('assets/images/img6.png'),
                                        image: AssetImage(
                                            'assets/images/img6.png'),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 110,
                                    height: 87,
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 38,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color.fromRGBO(7, 78, 215, 1),
                                      ),
                                      //  color: Colors.blueAccent,
                                      child: Icon(
                                        Icons.play_circle_filled,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 82,
                                    child: Container(
                                      color: Color.fromRGBO(216, 216, 216, 1),
                                      width: 110,
                                      height: 5,
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 59,
                                        height: 5,
                                        color: Color.fromRGBO(7, 78, 215, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "1.Winter Fell",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    letterSpacing: 0.14,
                                    color: Color.fromRGBO(6, 96, 219, 1)),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "101 min",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                    letterSpacing: 0.14,
                                    color: Color.fromRGBO(119, 137, 181, 1)),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        // image: AssetImage('assets/images/img6.png'),
                                        image: AssetImage(
                                            'assets/images/img7.png'),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 110,
                                    height: 87,
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 38,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color.fromRGBO(7, 78, 215, 1),
                                      ),
                                      //  color: Colors.blueAccent,
                                      child: Icon(
                                        Icons.play_circle_filled,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "2.Episode 2",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    letterSpacing: 0.14,
                                    color: Color.fromRGBO(6, 96, 219, 1)),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "120 min",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                    letterSpacing: 0.14,
                                    color: Color.fromRGBO(119, 137, 181, 1)),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        // image: AssetImage('assets/images/img6.png'),
                                        image: AssetImage(
                                            'assets/images/img8.png'),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 110,
                                    height: 87,
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 38,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color.fromRGBO(7, 78, 215, 1),
                                      ),
                                      //  color: Colors.blueAccent,
                                      child: Icon(
                                        Icons.play_circle_filled,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "3.Episode 3",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    letterSpacing: 0.14,
                                    color: Color.fromRGBO(6, 96, 219, 1)),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "120 min",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                    letterSpacing: 0.14,
                                    color: Color.fromRGBO(119, 137, 181, 1)),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ],
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
