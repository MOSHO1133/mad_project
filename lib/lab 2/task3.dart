import 'dart:io';

void main() {
  print("Enter your age: ");
  String? input = stdin.readLineSync(); // Read user input

  try {
    int age = int.parse(input!); // Convert to integer
    int yearsLeft = 100 - age;
    print("You have $yearsLeft years left until you turn 100.");
  } catch (e) {
    print("Invalid input! Please enter a valid number.");
  }
}
