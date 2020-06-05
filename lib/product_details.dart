import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(

      child: Column(

        children: <Widget>[

          Image.network(

            'https://images.streetstylestore.com//1/1/1/9/5/1/111951-dress_default.jpg',

          ),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Text('Cozy Black', style: TextStyle(fontSize: 24.0),),

            ],

          )

        ],

      ),

    );

  }

}