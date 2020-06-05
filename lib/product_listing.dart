import 'package:flutter/material.dart';
import 'product.dart';

class Listing extends StatelessWidget{

  final json;

  const Listing({

    @required this.json,

  }) : assert(json != null);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return GridView.count(

      childAspectRatio: 150 / 178,

      padding: EdgeInsets.all(20.0),
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      crossAxisCount: 2,
      children: <Widget>[

        Product(jsonString: json,),
        Product(jsonString: json,),
        Product(jsonString: json,),
        Product(jsonString: json,),
        Product(jsonString: json,),

      ],

    );

  }

}