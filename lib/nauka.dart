import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'dart:convert';

List names = ['jeden', 'dwa', 'trzy'];
var list = [];

Future<void> readJson() async {
  final String response = await rootBundle.loadString('lib/slownik.json');
  final data = await json.decode(response);
  list = data;
}

class Nauka extends StatefulWidget {
  Nauka({Key? key}) : super(key: key);

  @override
  _NaukaState createState() => _NaukaState();
}

class _NaukaState extends State<Nauka> {
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
            Text(
              _haslo,
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              _opis,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () => list.isEmpty ? readJson() : _incrementCounter(),
        child: const Text('Losuj nowe hasło'),
      ),
    );
  }
}
