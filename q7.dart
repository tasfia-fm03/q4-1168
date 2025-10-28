import 'dart:io';

void main() {
  List<String> tasks = [];
  while (true) {
    print('\n1. Add Task');
    print('2. Remove Task');
    print('3. View Tasks');
    print('4. Exit');
    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write('Enter task to add: ');
      String? task = stdin.readLineSync();
      if (task != null && task.isNotEmpty) {
        tasks.add(task);
        print('Task added.');
      }
    } else if (choice == '2') {
      stdout.write('Enter task to remove: ');
      String? task = stdin.readLineSync();
      if (tasks.remove(task)) {
        print('Task removed.');
      } else {
        print('Task not found.');
      }
    } else if (choice == '3') {
      if (tasks.isEmpty) {
        print('No tasks found.');
      } else {
        print('Tasks:');
        for (var t in tasks) {
          print('- $t');
        }
      }
    } else if (choice == '4') {
      print('Goodbye!');
      break;
    } else {
      print('Invalid choice. Try again.');
    }
  }
}
