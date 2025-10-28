import 'dart:io';

void main() {
  List<String> names = [];
  int i = 1;
  while (true) {
    print('Enter name $i (or type "exit" to finish):');
    String? name = stdin.readLineSync();
    if (name != null) {
      if (name.toLowerCase() == 'exit') {
        break;
      }
      names.add(name);
      i++;
    }
  }
  print('All names:');
  int j = 0;
  while (j < names.length) {
    print(names[j]);
    j++;
  }
}
