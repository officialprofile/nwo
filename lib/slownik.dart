import 'package:flutter/material.dart';

const int itemCount = 30;
const isFav = <bool>[true, false];

class Slownik extends StatelessWidget {
  const Slownik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Słowo numer ${(index + 1)}'),
            trailing: const Icon(Icons.favorite_sharp),
            // : const Icon(Icons.favorite_border_sharp),
          );
        });
  }
}
