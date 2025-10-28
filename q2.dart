import 'dart:io';

void main() {
  Set<String> fruits = {};
  int i = 1;
  while (true) {
    print('Enter fruit $i (or type "exit" to finish):');
    String? fruit = stdin.readLineSync();
    if (fruit != null) {
      if (fruit.toLowerCase() == 'exit') {
        break;
      }
      fruits.add(fruit);
      i++;
    }
  }
  print('All fruits in set:');
  for (var fruit in fruits) {
    print(fruit);
  }
}
