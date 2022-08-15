import 'package:flutter/material.dart';
import 'ulubione.dart';
import 'nauka.dart';
import 'slownik.dart';
import 'ustawienia.dart';

void main() {
  runApp(const NWO());
}

class NWO extends StatelessWidget {
  const NWO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  List<Widget> pages = [Nauka(), Slownik(), Ulubione(), Ustawienia()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: const Text('Nauka Wyrazów Obcych'),
      //),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Nauka"),
          NavigationDestination(
              icon: Icon(Icons.format_list_bulleted), label: "Słownik"),
          NavigationDestination(
              icon: Icon(Icons.favorite_border_sharp), label: "Ulubione"),
          NavigationDestination(
              icon: Icon(Icons.settings_outlined), label: "Ustawienia")
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
