import 'dart:io';

void main() {
  List<double> expenses = [];
  print('Enter expense amounts, separated by space:');
  String? input = stdin.readLineSync();
  if (input != null) {
    List<String> parts = input.split(' ');
    for (var part in parts) {
      expenses.add(double.parse(part));
    }
  }
  double total = expenses.reduce((a, b) => a + b);
  print('Total expenses: \$${total}');
}
