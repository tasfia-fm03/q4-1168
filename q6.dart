void main() {
  Map<String, dynamic> person = {
    'name': 'John',
    'address': 'Sylhet',
    'age': 30,
    'country': 'Bangladesh',
  };
  person['country'] = 'Canada';
  person.forEach((key, value) {
    print('$key: $value');
  });
}
