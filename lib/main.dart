import 'dart:convert';

import 'package:flutter/material.dart';
import 'product.dart';
import 'product_listing.dart';

void main(){

  runApp(MyApp());

}

final jsonString = '{'
    '"products": ['
    '{'
    '"name": "Bow Tie",'
    '"url": "https://images.streetstylestore.com//1/1/1/9/5/1/111951.jpg",'
    '"price": "599"'
    '},'
    '{'
    '"name": "Cozy Red",'
    '"url": "https://images.streetstylestore.com//1/3/3/3/3/1/133331-dress_default.jpg",'
    '"price": "299"'
    '},'
    '{'
    '"name": "Rib Body",'
    '"url": "https://images.streetstylestore.com//1/3/3/4/8/8/133488-dress_default.jpg",'
    '"price": "199"'
    '},'
    '{'
    '"name": "Cozy Red",'
    '"url": "https://images.streetstylestore.com//1/3/3/3/3/1/133331-dress_default.jpg",'
    '"price": "299"'
    '},'
    '{'
    '"name": "Cozy Red",'
    '"url": "https://images.streetstylestore.com//1/3/3/3/3/1/133331-dress_default.jpg",'
    '"price": "299"'
    '},'
    '{'
    '"name": "Cozy Red",'
    '"url": "https://images.streetstylestore.com//1/3/3/3/3/1/133331-dress_default.jpg",'
    '"price": "299"'
    '},'
    '{'
    '"name": "Cozy Red",'
    '"url": "https://images.streetstylestore.com//1/3/3/3/3/1/133331-dress_default.jpg",'
    '"price": "299"'
    '},'
    '{'
    '"name": "Cozy Red",'
    '"url": "https://images.streetstylestore.com//1/3/3/3/3/1/133331-dress_default.jpg",'
    '"price": "299"'
    '},'
    '{'
    '"name": "Cozy Red",'
    '"url": "https://images.streetstylestore.com//1/3/3/3/3/1/133331-dress_default.jpg",'
    '"price": "299"'
    '}'
    ']'
    '}';

class MyApp extends StatelessWidget{



  final jsonObject = json.decode(jsonString);

  //var arr = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //print(arr.toString());
    print(jsonObject['products'][1]['url'].toString());

    return MaterialApp(

      theme: ThemeData(

        brightness: Brightness.light,
        primaryColor: Colors.pink

      ),

      /*theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),*/
      //themeMode: ThemeMode.dark,

      debugShowCheckedModeBanner: false,

      home: Scaffold(

        //backgroundColor: Colors.pink[50],

        appBar: AppBar(

          title: Text('Street Style Store'),
          actions: <Widget>[

            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(Icons.shopping_cart, color: Colors.white),
            )

          ],

        ),

        body: Container(

          child: Listing(json: jsonObject,),

        )

      ),

    );

  }

}