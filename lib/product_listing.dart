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

    return GridView.builder(

      /*gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 150/190, crossAxisSpacing: 10.0, mainAxisSpacing: 10.0),
      padding: EdgeInsets.all(20.0),
      itemCount: json['products'].length,
      itemBuilder: (BuildContext context, int index){

        return Card(

          child: Product(jsonString: json['products'][index],),

        );

      },*/

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 150/190, /*crossAxisSpacing: 10.0, mainAxisSpacing: 10.0*/),
     // padding: EdgeInsets.all(20.0),
      itemCount: json['products'].length,
      itemBuilder: (BuildContext context, int index){

        return Container(

          decoration: BoxDecoration(

            border: Border.all(color: Colors.black, width: 0.5)

          ),

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Product(jsonString: json['products'][index],),
            ),

        );

      },

      /*childAspectRatio: 150 / 178,

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

      ],*/

    );

  }

}