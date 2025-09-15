// 1. Void function WITHOUT parameters
void greet() {
  print("Hello! Welcome to the program!");
}

// 2. Void function WITH parameters
void greetPerson(String name, int age) {
  print("Hello $name! You are $age years old.");
}

// 3. Return function WITHOUT parameters
String getCurrentTime() {
  DateTime now = DateTime.now();
  return "Current time: ${now.hour}:${now.minute}";
}

// 4. Return function WITH parameters
double calculateArea(double length, double width) {
  return length * width;
}

// Bonus: Return function with multiple parameters
String createUserProfile(String name, int age, [String? city]) {
  if (city == null) {
    return "Profile: $name, $age years old";
  } else {
    return "Profile: $name, $age years old from $city";
  }
}

void main() {

  
  // 1. Calling void function without parameters
  print("1. Void function without parameters:");
  greet();
  print("");
  
  // 2. Calling void function with parameters
  print("2. Void function with parameters:");
  greetPerson("ADIL", 21);
  greetPerson("SHERAZ", 22);
  print("");
  
  // 3. Calling return function without parameters
  print("3. Return function without parameters:");
  String time = getCurrentTime();
  print(time);
  print("");
  
  // 4. Calling return function with parameters
  print("4. Return function with parameters:");
  double area1 = calculateArea(5, 3);
  double area2 = calculateArea(7, 4);
  print("Area 1: $area1");
  print("Area 2: $area2");
  print("");
  
  // Bonus: Calling function with multiple parameters
  print("5. Bonus - Multiple parameters:");
  String profile1 = createUserProfile("John", 28);
  String profile2 = createUserProfile("Sarah", 22, "London");
  print(profile1);
  print(profile2);
  
  
}