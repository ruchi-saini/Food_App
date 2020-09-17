import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Homepage extends StatelessWidget {
  barcircle({String abc, String xyz}) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: Image(
            image: AssetImage('images/$abc.png'),
            width: 40,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '$xyz',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
  buttons({String text, int colour}) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: Color(colour),
      child: Text(
        '$text',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      textColor: Colors.white,
      onPressed: () {},
    );
  }
  rate({double star}) {
  return SmoothStarRating(
      allowHalfRating: true,
      starCount: 5,
      rating: star,
      size: 18.0,
      isReadOnly: false,
      color: Colors.yellow,
      borderColor: Colors.grey,
      spacing: 0.0
  );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
            child: Scaffold(
        body: SingleChildScrollView(
              child: Column(
        children: <Widget>[
             Container(
                height: MediaQuery.of(context).size.height / 3.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                    padding: const EdgeInsets.only(left:240, top: 5),
                             child: Image(image: AssetImage('images/foodlogo.jpg.png'),
                             height: 100,
                             width: 100,),
                      ),
                             SizedBox(
                               height: 25,
                             ),
                             SingleChildScrollView(
                               scrollDirection: Axis.horizontal,
                               child: Row(
                                 children: <Widget>[
                                   Padding(
                                     padding: const EdgeInsets.only(left: 15.0),
                                     child: Container(
                                       child: barcircle(abc: 'drink', xyz: 'DRINK'),
                                     ),
                                   ),
                                   SizedBox(
                                     width: 28,
                                   ),
                                   barcircle(abc: 'pizza', xyz: 'PIZZA'),
                                   SizedBox(
                                     width: 28,
                                   ),
                                   barcircle(abc: 'burger', xyz: 'BURGER'),
                                   SizedBox(
                                     width: 28,
                                   ),
                                   barcircle(abc: 'sandwich', xyz: 'SANDWICH'),
                                   SizedBox(
                                     width: 28,
                                   ),
                                   barcircle(abc: 'icecream', xyz: 'ICECREAM'),
                                 ],
                               ),
                             ),
                    ],

                               ),
                  ),
              SizedBox(
                height: 16,
              ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 11.0),
                    child: Container(
                      child: buttons(text: 'CAKE', colour: 0xFFF484B1),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  buttons(text: 'PIE', colour: 0xFFAB47BC),
                  SizedBox(
                    width: 10,
                  ),
                  buttons(text: 'ICE CREAM', colour: 0xFF7986CB),
                  SizedBox(
                    width: 10,
                  ),
                  buttons(text: 'CANNOLI', colour: 0xFF40C4FF),
                ],
              ),
            ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(right: 170),
            child: Text(
              'Most Popular',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
                letterSpacing: 1.0,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width/1.1,
            height: MediaQuery.of(context).size.height/2.3,
            child:Card(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Column(
              children: <Widget>[
                 Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                 children: <Widget>[
                   Container(
                  margin: EdgeInsets.only(left: 10.0,top: 5.0),
               child:  CircleAvatar(
                  radius:20.0,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/ruchi.png.jpg'),
                ),
                   ),
                   SizedBox(
                     width: 10,
                   ),
                    Text(
                      'Olea Powers',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,

                    ),
            ),
              ],
            ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        '160',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
            ],
          ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage('images/pizzas.png'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(right: 190),
                  child: Text(
                    'Pizza Margherita',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right:190),
                    child: rate(star: 5),
                  ),
                  ],
                )
              ],
            ),
            ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            width: MediaQuery.of(context).size.width/1.1,
            height: MediaQuery.of(context).size.height/2.3,
            child:Card(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top: 3.0),
                              child:  CircleAvatar(
                                radius:20.0,
                                backgroundColor: Colors.black,
                                backgroundImage: AssetImage('images/ruchi.png.jpg'),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Olea Powers',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black,

                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '160',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.1,
                      child: Image(
                        image: AssetImage('images/pizzas.png'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 190),
                      child: Text(
                        'Pizza Margherita',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right:190),
                          child: rate(star: 5),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

            ],
       ),
                ),
      ),
                             ),

                             );
  }
}
