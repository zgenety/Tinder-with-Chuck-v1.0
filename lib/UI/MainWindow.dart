import 'package:fff/UI/ChooseWindow.dart';
import 'package:flutter/material.dart';
import '../get_joke.dart';
import '../translator.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Tinder with Chuck',
        home:  MyHomePage(),
        debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _phrase = "Press to get the joke";

  Future<void> _update () async {
    final GetJoke getJoke = GetJoke();
    final Translator translatePhrase = Translator();
    String joke = await getJoke.getRandomJoke();
    setState(() {
      _phrase = joke;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network("https://api.chucknorris.io/img/chucknorris_logo_coloured_small@2x.png",
                width: 200, height: 200,),
              Text(
                _phrase,
                style: TextStyle(fontSize: 15,
                    color: Colors.black.withOpacity(1)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        floatingActionButton: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              bottom: 30,
              left: 100,
              child: FloatingActionButton(
                onPressed: () {_update();},
                child: const Icon(
                  Icons.favorite,
                  size: 40,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 100,
              child: FloatingActionButton(
                onPressed: () {_update();},
                child: const Icon(
                  Icons.heart_broken,
                  size: 40,
                ),
              ),
            ),
            Positioned(
              top: 30,
              right: 30,
              child: FloatingActionButton(
                onPressed: () {_update;Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChooseWindow()),
                );
                },
                child: const Icon(
                  Icons.settings,
                  size: 40,
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: 30,
              child: FloatingActionButton(
                onPressed: () {_update;Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChooseWindow()),
                );
                },
                child: const Icon(
                  Icons.star,
                  size: 40,
                ),
              ),
            ),
          ]
        )
    )
    );
  }
}
