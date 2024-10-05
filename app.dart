import 'dart:io';
import 'dart:convert';

void main() {
  // String Manipulation
  print("Enter a string:");
  String userInput = stdin.readLineSync() ?? "";

  // Demonstrate string manipulation
  String reversed = reverseString(userInput);
  String upperCase = userInput.toUpperCase();
  String lowerCase = userInput.toLowerCase();
  String substring = userInput.substring(0, (userInput.length / 2).round());

  print("Reversed String: $reversed");
  print("Uppercase: $upperCase");
  print("Lowercase: $lowerCase");
  print("Substring (first half): $substring");
  print("Length of the string: ${userInput.length}");

  // Collections
  List<String> stringList = [];
  Set<String> stringSet = {};
  Map<String, String> stringMap = {};

  // Add results to the list
  stringList.add(userInput);
  stringList.add(reversed);
  stringList.add(upperCase);
  stringList.add(lowerCase);
  stringList.add(substring);

  // Add to set (only unique values)
  stringSet.add(userInput);
  stringSet.add(reversed);

  // Add to map (for demonstration, use original string as key and reverse as value)
  stringMap[userInput] = reversed;

  // Iterating through collections
  print("\nList of strings:");
  for (var item in stringList) {
    print(item);
  }

  print("\nUnique strings (Set):");
  for (var item in stringSet) {
    print(item);
  }

  print("\nString Map:");
  stringMap.forEach((key, value) {
    print('$key: $value');
  });

  // File Handling
  String filePath = 'output.txt';
  String logMessage = "${DateTime.now()}: Processed string - $userInput\n";

  // Write to file
  try {
    File(filePath).writeAsStringSync(logMessage, mode: FileMode.append);
    print("\nLog saved to $filePath");
  } catch (e) {
    print("Error writing to file: $e");
  }

  // Read from file
  try {
    String content = File(filePath).readAsStringSync();
    print("\nContent of $filePath:");
    print(content);
  } catch (e) {
    print("Error reading from file: $e");
  }

  // Date and Time
  DateTime now = DateTime.now();
  DateTime futureDate = now.add(Duration(days: 7));
  print("\nToday's date: ${now.toLocal()}");
  print("Date 7 days from now: ${futureDate.toLocal()}");

  // Calculate difference between two dates
  DateTime anotherDate = DateTime.now().add(Duration(days: 30));
  Duration difference = anotherDate.difference(now);
  print("Difference in days between now and 30 days later: ${difference.inDays}");
}

// Function to reverse a string
String reverseString(String input) {
  return input.split('').reversed.join('');
}
