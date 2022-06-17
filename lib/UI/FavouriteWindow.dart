import 'package:fff/favourite.dart';
import 'package:flutter/material.dart';

class FavouriteWindow extends StatelessWidget{
  const FavouriteWindow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      floatingActionButton: Stack(
        children: [
          Positioned(
            left: 30,
            top: 40,
            child: FloatingActionButton(
              onPressed: () {Navigator.pop(context);},
              child: const Icon(
                Icons.arrow_back,
                size: 40,
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 120,
            child: Text(gotFavJoke(0)),
          ),
          Positioned(
            left: 30,
            top: 180,
            child: Text(gotFavJoke(1)),
          ),
          Positioned(
            left: 30,
            top: 240,
            child: Text(gotFavJoke(2)),
          ),
          Positioned(
            left: 30,
            top: 300,
            child: Text(gotFavJoke(3)),
          ),
          Positioned(
            left: 30,
            top: 360,
            child: Text(gotFavJoke(4)),
          ),
      ]
      ),
    ));
  }
}
