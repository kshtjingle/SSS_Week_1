import 'dart:convert';

import 'package:flutter/material.dart';
import 'product.dart';
import 'product_listing.dart';

void main(){

  runApp(MyApp());

}

class MyApp extends StatelessWidget{

  var jsonString = '{'
      '"products": ['
      '{'
      '"name": "Bow Tie",'
      '"url": "https://images.streetstylestore.com//1/1/1/9/5/1/111951.jpg",'
      '"price": "599",'
      '},'
      '{'
      '"name": "Cozy Red",'
      '"url": "https://images.streetstylestore.com//1/3/3/3/3/1/133331-dress_default.jpg",'
      '"price": "299"'
      '},'
      '],'
      '}';

  //var jsonObject = jsonDecode(jsonString);

  var arr = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    print(arr.toString());
    //print(jsonObject.toString());

    return MaterialApp(

      theme: ThemeData(

        brightness: Brightness.light,
        primaryColor: Colors.pink

      ),

      debugShowCheckedModeBanner: false,

      home: Scaffold(

        backgroundColor: Colors.pink[50],

        appBar: AppBar(

          title: Text('Street Style Store'),

        ),

        body: Container(

          child: Listing(json: jsonString,),

        )

      ),

    );

  }

}