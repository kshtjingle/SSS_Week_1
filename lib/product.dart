import 'package:flutter/material.dart';
import 'product_details.dart';

class Product extends StatelessWidget{

  final jsonString;

  const Product({

    @required this.jsonString,

  }) : assert(jsonString != null);

  void _navigateToDetails(BuildContext context){

    Navigator.push(context, MaterialPageRoute(builder: (context) => Scaffold(appBar: AppBar(title: Text('Details'),), body: ProductDetails(),)));

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return InkWell(

      onTap: (){

        print('Tapped!');
        _navigateToDetails(context);

      },

      child: Container(

        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10.0),
          color: Colors.blue[100],
          boxShadow: <BoxShadow>[

            BoxShadow(

              color: Colors.red[300],
              offset: Offset(3.0, 3.0),
              blurRadius: 2.0,
              //spreadRadius: 90.0,

            )

          ]

        ),

        height: 225.0,
        width: 150.0,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: <Widget>[

              Image.network(

                'https://images.streetstylestore.com//1/3/3/3/3/1/133331-dress_default.jpg',

                width: 138.0,
                height: 115.0,
                //width: 200.0,

              ),

              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[

                    Text(

                      'Cozy Black'

                    ),

                  ],

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[

                    Text('Rs. 299/-', style: TextStyle(color: Colors.orangeAccent[400]),),

                    Icon(Icons.favorite_border),

                  ],

                ),
              )

            ],

          ),
        ),

      ),
    );

  }

}