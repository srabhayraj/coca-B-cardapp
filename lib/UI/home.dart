import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';


toast1() {
  Fluttertoast.showToast(
      msg: "Nothing To Show",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.white,
      textColor: Colors.red,
      fontSize: 20.0);
}

toast2() {
  Fluttertoast.showToast(
      msg: "Sign Up",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.white,
      textColor: Colors.red,
      fontSize: 20.0);
}

var url2 =
    'https://raw.githubusercontent.com/Rahulkprajapati/test4flutter/master/lau67.jpg';

var url1 =
    'https://raw.githubusercontent.com/Rahulkprajapati/test4flutter/master/lay3.jpg';

var url =
    'https://raw.githubusercontent.com/Rahulkprajapati/test4flutter/master/finalcocola.jpg';


tap() {
    Fluttertoast.showToast(
      msg: "Since 1886",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 24.0);
}

var mybody = Container(
  alignment: Alignment.center,
  width: double.infinity,
  height: double.infinity,
  //color: Colors.blue.shade300,
  margin: EdgeInsets.all(20.0),

  decoration: BoxDecoration(
    image: DecorationImage(image: NetworkImage(url1), fit: BoxFit.cover),
    color: Colors.black,
    border: Border.all(color: Colors.red, width: 5),
    borderRadius: BorderRadius.circular(25),
  ),

  child: Stack(
    alignment: Alignment.topCenter,
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.red,
            width: 3,
          ),
        ),
        width: 400,
        height: 180,
        //color: Colors.amberAccent.shade200,
        //child: Text('FirstBox'),
        margin: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Global',
              style: TextStyle(
                color: Colors.red,
                height: -5,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.email, color: Colors.red,),
                Text(
                  ' press@cocacola.com',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.location_on , color: Colors.red,),
                Text('121 NW, Atlanta US', style: TextStyle(color: Colors.red,
                fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
      ),
      GestureDetector(
        //onTap: tap,
        onDoubleTap: tap,
        child: Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(url), fit: BoxFit.fitHeight),
              color: Colors.transparent,
              border: Border.all(
                color: Colors.red,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(50)),
          width: 100,
          height: 100,
          //color: Colors.red,
          //child: Text('secondbox'),
          //margin: EdgeInsets.all(20),
        ),
      )
    ],
  ),
);

var myhome = Scaffold(
  backgroundColor: Colors.white,
  body: mybody,
  appBar: AppBar(
    brightness: Brightness.dark,
    flexibleSpace: Image(
      image: NetworkImage(url2),
      fit: BoxFit.cover,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    backgroundColor: Colors.transparent,
    actions: <Widget>[
      IconButton(icon: Icon(Icons.menu), onPressed: toast1),
      IconButton(icon: Icon(Icons.portrait), onPressed: toast2)
    ],
    title: Text(
      'Products',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.white,
      ),
    ),
  ),
);
layout() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.white70);
  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}
