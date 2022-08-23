import 'package:flutter/material.dart';
import 'package:nwo/slownik.dart';

const int itemCount = 20;

final List slownik = [
  {
    "haslo": "utensylia",
    "definicja": "narzędzia, przybory, sprzęt; akcesoria."
  },
  {
    "haslo": "wagabunda",
    "definicja": "włóczęga, tramp, obieżyświat, powsinoga."
  },
  {
    "haslo": "Wampuka",
    "definicja":
        "parodia opery, niedorzecznych konwencji i zakrzepłej rutyny przedstawień operowych; bezwartościowy, lichy, pretensjonalny, banalny spektakl teatr."
  },
  {
    "haslo": "werbalizm",
    "definicja":
        "objaśnianie, nauczanie czysto słowne, nie poparte doświadczeniem, dowodami, faktami, korektami; pustosłowie, czcze, jałowe, akademickie rozprawianie."
  },
  {
    "haslo": "werbigeracja",
    "definicja":
        "psych. chorobliwe, nieustanne powtarzanie bezsensownych słów a. zdań."
  },
  {
    "haslo": "westybuł",
    "definicja":
        "przedsionek, przedpokój (zwł. obszerny, w budynku publ.); hall."
  },
  {
    "haslo": "white man's burden",
    "definicja":
        "ang. brzemię białego człowieka (eufemistyczne określenie kolonializmu Imperium Bryt. końca XIX i pocz. XX w., usprawiedliwianego przez apologetów jako obowiązek moralny 'wyższych' białych narodów w stosunku do 'zacofanych' kolorowych ludów w koloniach)."
  },
  {
    "haslo": "wisceralny",
    "definicja": "anat. jelitowy, trzewiowy, dotyczący wnętrzności."
  },
  {
    "haslo": "wiskozja",
    "definicja":
        "psych. lepkość, perseweracja myśli, chorobliwa niemożność uwolnienia się od jakiejś myśli."
  },
  {
    "haslo": "wodewil",
    "definicja":
        "lekki, komediowy utwór sceniczny z przewagą dialogów (w odróżnieniu od operetki), ze śpiewami, tańcami, muzyką i pantomimą."
  },
  {
    "haslo": "zelota",
    "definicja":
        "fanatyczny, zagorzały, namiętny entuzjasta jakiejś idei, religii itd.; hist. człowiek fanatycznej sekty, zaciekle przeciwstawiającej się panowaniu Rzymian w Palestynie w czasie powstania żyć. i oblężenia Jerozolimy (I w.)."
  },
  {"haslo": "zelant", "definicja": "gorliwiec, zapaleniec."},
  {
    "haslo": "zegizm",
    "definicja":
        "antyrozwojowość, bezrozwojowość, kierunek ideologiczny, wg którego nalezy powstrzymać dalszy liczbowy, tech., nauk. rozwój ludzkości, urbanizację, mechanizację, chemizację itp., gdyż dalszy rozrost cywilizacji jest równoznaczny z zagładą naturalnego.środowiska, a więc i człowieka."
  },
  {
    "haslo": "zoil",
    "definicja":
        "dokuczliwy, zawistny, złośliwy krytyk, szukający dziury w całym."
  }
];

class Ulubione extends StatefulWidget {
  Ulubione({Key? key}) : super(key: key);

  @override
  _UlubioneState createState() => _UlubioneState();
}

class _UlubioneState extends State<Ulubione> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(1),
      itemCount: slownik.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableTile(slownik[index]);
      },
      // separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}

Widget _buildExpandableTile(item) {
  return ExpansionTile(
    title: Text(
      item['haslo'],
    ),
    children: <Widget>[
      ListTile(
        title: Text(
          item['definicja'],
          style: TextStyle(fontWeight: FontWeight.w200),
        ),
      )
    ],
  );
}
