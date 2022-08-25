import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "dart:math";
import 'dart:convert';

var list = [];

Future<void> readJson() async {
    final String response = await rootBundle.loadString('lib/csvjson.json');
    final data = await json.decode(response);
    list = data;
}

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _haslo = "Nauka wyrazów obcych";
  String _opis = "Kliknij na przycisk poniżej, aby wylosować pierwsze hasło.";

  void _incrementCounter() {
    setState(() {
      final _random = new Random();
      _haslo = list[_random.nextInt(list.length)]["term"];
      _opis = list[_random.nextInt(list.length)]["desc"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_haslo, style: Theme.of(context).textTheme.headline3,
              ),
            Text(_opis, style: Theme.of(context).textTheme.headline5,        
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: ()=> list.isEmpty ? readJson() : _incrementCounter(),
        child: const Text('Losuj nowe hasło'),
      ),
    );
  }
}
