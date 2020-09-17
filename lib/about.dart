import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
class About extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _AboutPageState();
  }
}
class _AboutPageState extends State<About> {
  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50.0, bottom: 50.0),
            child: Center(
              child: Image(image: AssetImage('images/foodlogo.jpg.png')),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Sign Up Free Account',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
    ),
          SizedBox(
            height: 25.0,
          ),
          Column(
            children: <Widget>[
              fieldInput(
                  type: 'UserName', texttype: TextInputType.text),
              fieldInput(
                  type: 'Email', texttype: TextInputType.emailAddress),
              fieldInput(
                  type: 'Password',
                  texttype: TextInputType.visiblePassword),
              fieldInput(type: 'Phone', texttype: TextInputType.number)
            ],
          ),
          SizedBox(
            height: 27.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: RaisedButton(
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Text(
                'Sign UP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                if(_formkey.currentState.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Homepage()
                    ),
                  );
                }},
              elevation: 0.0,
            ),
          ),
        ],
      ),
      ),
    );
  }


  Widget fieldInput({String type, TextInputType texttype}) =>
      Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 7.7),
        child: Center(
          child: TextFormField(
            validator: (String value) {
              if (value.isEmpty) {
                return 'Required*';
              }
              return null;
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[300],
              labelText: '$type',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white54,
                  fontSize: 20.0),
              hintText: '$type',
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
                fontSize: 20.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            keyboardType: texttype,
          ),
        ),
      );

}
