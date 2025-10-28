void main() {
  List<String> friends = [
    'Alice',
    'Annie',
    'Brian',
    'Arif',
    'Samir',
    'Amir',
    'James',
  ];
  var startsWithA = friends
      .where((name) => name.toLowerCase().startsWith('a'))
      .toList();
  print('Friends starting with "a": $startsWithA');
}
