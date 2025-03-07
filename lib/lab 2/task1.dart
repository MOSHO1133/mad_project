import 'dart:io';

void main() {
  List<String> todoList = [];

  while (true) {
    print("\nTo-Do List Menu:");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Remove Task");
    print("4. Exit");
    stdout.write("Choose an option: ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter a new task: ");
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) {
          todoList.add(task);
          print("Task added successfully!");
        } else {
          print("Task cannot be empty.");
        }
        break;

      case '2':
        if (todoList.isEmpty) {
          print("No tasks in the list.");
        } else {
          print("\nYour To-Do List:");
          for (int i = 0; i < todoList.length; i++) {
            print("${i + 1}. ${todoList[i]}");
          }
        }
        break;

      case '3':
        if (todoList.isEmpty) {
          print("No tasks to remove.");
        } else {
          stdout.write("Enter the task number to remove: ");
          String? indexInput = stdin.readLineSync();
          int? index = int.tryParse(indexInput ?? '');

          if (index != null && index > 0 && index <= todoList.length) {
            print("Removed: ${todoList.removeAt(index - 1)}");
          } else {
            print("Invalid task number.");
          }
        }
        break;

      case '4':
        print("Exiting program. Goodbye!");
        return;

      default:
        print("Invalid choice. Please try again.");
    }
  }
}
