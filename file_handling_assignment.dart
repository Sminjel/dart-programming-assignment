// Define Variables
void defineVariables() {
  int integerValue = 42;
  double doubleValue = 3.14;
  String stringValue = "Hello, Dart!";
  bool booleanValue = true;
  List<int> integerList = [1, 2, 3, 4, 5];

  print('Integer Value: $integerValue');
  print('Double Value: $doubleValue');
  print('String Value: $stringValue');
  print('Boolean Value: $booleanValue');
  print('Integer List: $integerList');
}

// Type Conversion Functions
int stringToInt(String str) {
  return int.parse(str);
}

double stringToDouble(String str) {
  return double.parse(str);
}

String intToString(int value) {
  return value.toString();
}

double intToDouble(int value) {
  return value.toDouble();
}

void convertAndDisplay(String numberStr) {
  int convertedInt = stringToInt(numberStr);
  double convertedDouble = stringToDouble(numberStr);
  
  print('String to Int: $convertedInt');
  print('String to Double: $convertedDouble');
}

// Control Flow: If-Else Statements
void checkNumber(int number) {
  if (number > 0) {
    print('The number is positive.');
  } else if (number < 0) {
    print('The number is negative.');
  } else {
    print('The number is zero.');
  }
}

void checkEligibility(int age) {
  if (age >= 18) {
    print('You are eligible to vote.');
  } else {
    print('You are not eligible to vote.');
  }
}

// Switch Case Example
void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day number');
  }
}

// Loops
void forLoopExample() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void whileLoopExample() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

void doWhileLoopExample() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

// Combining Data Types and Control Flow
void complexExample() {
  List<int> numbers = [2, 15, 50, 120];

  for (int number in numbers) {
    print('Number: $number');
    
    if (number % 2 == 0) {
      print('The number is even.');
    } else {
      print('The number is odd.');
    }
    
    switch (number) {
      case var n if (n >= 1 && n <= 10):
        print('Category: Small');
        break;
      case var n if (n >= 11 && n <= 100):
        print('Category: Medium');
        break;
      case var n if (n >= 101):
        print('Category: Large');
        break;
      default:
        print('Category: Unknown');
    }
  }
}

void main() {
  // Run the defined functions
  defineVariables();
  
  // Type Conversion
  convertAndDisplay("123");

  // Control Flow
  checkNumber(5);
  checkEligibility(20);
  printDayOfWeek(3);

  // Loops
  forLoopExample();
  whileLoopExample();
  doWhileLoopExample();

  // Combining Data Types and Control Flow
  complexExample();
}
