import 'dart:io';

void main() {
  List word = [], definition = [], more = [];
  File('slownik.csv').readAsString().then((String contents) {
    var lines = contents.split("\n");

    for (var line in lines) {
      if (line.length > 0) {
        var lineSplitted = line.split(";");
        word.add(lineSplitted[0]);
        definition.add(lineSplitted[1]);
        more.add(lineSplitted[2]);
      }
    }
  });
  print(definition.length);
}
