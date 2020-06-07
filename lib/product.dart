import 'package:flutter/material.dart';
import 'package:sssfirsttask/fav_icon.dart';
import 'product_details.dart';
import 'fav_icon.dart';

class Product extends StatelessWidget{

  final jsonString;

  Product({

    @required this.jsonString,

  }) : assert(jsonString != null);

  void _navigateToDetails(BuildContext context){

    Navigator.push(context, MaterialPageRoute(builder: (context) => Scaffold(appBar: AppBar(title: Text('Details'),), body: ProductDetails(json: jsonString,),)));

  }

  //bool _isFav = false;
  final FavoriteIcon fav = FavoriteIcon();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return InkWell(

      onTap: (){

        print('Tapped!');
        _navigateToDetails(context);

      },

      child: Container(

        /*decoration: BoxDecoration(

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

        ),*/

        height: 225.0,
        width: 350.0,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: <Widget>[

              Container(

                decoration: BoxDecoration(

                  border: Border.all(

                    color: Colors.orange, width: 0.5

                  )

                ),

                child: Image.network(

                  jsonString['url'],

                  //width: 138.0,
                  height: 115.0,

                  fit: BoxFit.fitWidth,
                  //width: 200.0,

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[

                    Text(

                      jsonString['name'],

                    ),

                  ],

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[

                    Text('Rs. ${jsonString['price']}/-', style: TextStyle(color: Colors.orangeAccent[400]),),

                    fav,

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

/*class _ProductState extends State<Product>{



}*/