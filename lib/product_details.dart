import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget{

  final json;

  const ProductDetails({

    @required this.json,

  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(

        children: <Widget>[

          Container(

            height: 350.0,
            width: 400.0,

            decoration: BoxDecoration(

              border: Border.all(

                color: Colors.orange,
                width: 0.5

              ),

              image: DecorationImage(

                image: NetworkImage(json['url']),
                fit: BoxFit.fill

              )

            ),

            /*child: Image.network(



              json['url'],



            ),*/
          ),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(json['name'], style: TextStyle(fontSize: 24.0),),
              ),



            ],

          ),

          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text('Rs. ${json['price']}/-', style: TextStyle(fontSize: 20.0, color: Colors.orange[300]),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[

                RaisedButton.icon(

                  icon: Icon(Icons.shopping_cart),
                  label: Text('Add to Cart'),
                  onPressed: (){

                    print('Happy!');

                  },
                  color: Colors.green,

                ),

                Container(

                  child: Row(

                    children: <Widget>[

                      Text('Size: '),
                      DropdownButton(

                        items: <int>[32, 34, 46, 38].map<DropdownMenuItem<int>>((int value){

                          return DropdownMenuItem<int>(

                            value: value,
                            child: Text(value.toString()),

                          );

                        }).toList(),

                      )

                    ],

                  ),

                )

              ],

            ),
          )

        ],

      ),
    );

  }

}