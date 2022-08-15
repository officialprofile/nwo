import 'package:flutter/material.dart';

const int itemCount = 20;

class Ulubione extends StatefulWidget {
  Ulubione({Key? key}) : super(key: key);

  @override
  _UlubioneState createState() => _UlubioneState();
}

class _UlubioneState extends State<Ulubione> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Ulubione słowo ${(index + 1)}'),
          );
        });
  }
}
