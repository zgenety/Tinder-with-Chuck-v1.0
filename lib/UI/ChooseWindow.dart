import 'package:fff/category.dart';
import 'package:flutter/material.dart';

class ChooseWindow extends StatelessWidget{
  const ChooseWindow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: const Center(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 30,
            top: 40,
            child: FloatingActionButton(
              onPressed: () {setCategory("animal"); Navigator.pop(context);},
              child: const Text("animal"),),),
          Positioned(
            left: 90,
            top: 40,
            child: FloatingActionButton(
              onPressed: () {setCategory("career"); Navigator.pop(context);},
              child: const Text("career"),),),
          Positioned(
            left: 150,
            top: 40,
            child: FloatingActionButton(
              onPressed: () {setCategory("celebrity"); Navigator.pop(context);},
              child: const Text("celeb"),),),
          Positioned(
            left: 210,
            top: 40,
            child: FloatingActionButton(
              onPressed: () {setCategory("dev"); Navigator.pop(context);},
              child: const Text("dev"),),),
          Positioned(
            left: 30,
            top: 100,
            child: FloatingActionButton(
              onPressed: () {setCategory("explicit"); Navigator.pop(context);},
              child: const Text("explicit"),),),
          Positioned(
            left: 90,
            top: 100,
            child: FloatingActionButton(
              onPressed: () {setCategory("fashion"); Navigator.pop(context);},
              child: const Text("fashion"),),),
          Positioned(
            left: 150,
            top: 100,
            child: FloatingActionButton(
              onPressed: () {setCategory("food"); Navigator.pop(context);},
              child: const Text("food"),),),
          Positioned(
            left: 210,
            top: 100,
            child: FloatingActionButton(
              onPressed: () {setCategory("history"); Navigator.pop(context);},
              child: const Text("history"),),),
          Positioned(
            left: 30,
            top: 160,
            child: FloatingActionButton(
              onPressed: () {setCategory("money"); Navigator.pop(context);},
              child: const Text("money"),),),
          Positioned(
            left: 90,
            top: 160,
            child: FloatingActionButton(
              onPressed: () {setCategory("movie"); Navigator.pop(context);},
              child: const Text("movie"),),),
          Positioned(
            left: 150,
            top: 160,
            child: FloatingActionButton(
              onPressed: () {setCategory("music"); Navigator.pop(context);},
              child: const Text("music"),),),
          Positioned(
            left: 210,
            top: 160,
            child: FloatingActionButton(
              onPressed: () {setCategory("political"); Navigator.pop(context);},
              child: const Text("polit"),),),
          Positioned(
            left: 30,
            top: 220,
            child: FloatingActionButton(
              onPressed: () {setCategory("religion"); Navigator.pop(context);},
              child: const Text("religion"),),),
          Positioned(
            left: 90,
            top: 220,
            child: FloatingActionButton(
              onPressed: () {setCategory("science"); Navigator.pop(context);},
              child: const Text("scien"),),),
          Positioned(
            left: 150,
            top: 220,
            child: FloatingActionButton(
              onPressed: () {setCategory("sport"); Navigator.pop(context);},
              child: const Text("sport"),),),
          Positioned(
            left: 210,
            top: 220,
            child: FloatingActionButton(
              onPressed: () {setCategory("travel"); Navigator.pop(context);},
              child: const Text("travel"),),),
          Positioned(
            left: 120,
            top: 280,
            child: FloatingActionButton(
              onPressed: () {setCategory("any"); Navigator.pop(context);},
              child: const Text("any"),),),
          // Add more floating buttons if you want
          // There is no limit
        ],
      ),
    ));
  }
}
