import 'package:fff/get_joke.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

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
    final GetJoke getJoke = GetJoke('https://api.chucknorris.io/jokes/random');
    String joke = await getJoke.getRandomJoke();
    setState(() {
      _phrase = joke;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      floatingActionButton: FloatingActionButton(
        onPressed: _update,
        child: const Text("❤",
            textAlign: TextAlign.center)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
