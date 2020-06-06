import 'package:flutter/material.dart';

class FavoriteIcon extends StatefulWidget{

  @override
  createState() => _FavoriteIconState();

}

class _FavoriteIconState extends State<FavoriteIcon>{

  bool _isFav = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return InkWell(

      onTap: (){

        setState(() {
          _isFav = (_isFav == true) ? false : true;
        });

      },
        child: (_isFav == true) ? Icon(Icons.favorite, color: Colors.red,) : Icon(Icons.favorite_border)

    );

  }

}