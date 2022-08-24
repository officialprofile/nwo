import 'package:flutter/material.dart';
import 'dart:math';

List names = ['jeden', 'dwa', 'trzy'];

class Nauka extends StatefulWidget {
  Nauka({Key? key}) : super(key: key);

  @override
  _NaukaState createState() => _NaukaState();
}

class _NaukaState extends State<Nauka> {
  @override
  Widget build(BuildContext context) {
    final _random = new Random();
    return Text(names[_random.nextInt(names.length)]);
  }
}
