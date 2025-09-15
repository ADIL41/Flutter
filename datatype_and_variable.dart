//Declare a Variable using int and assign it to your age.
void main() {
  int age = 21;
  print('My age is : $age');

  // Write a program to store your name in a String and print it.

  String Myname = 'Muhammad Adil';
  print(Myname);

  //Demonstrate the use of var and dynamic with different types.

  /*When a variable is declared with var, Dart infers its type based on the initial value assigned at compile-time.
Once the type is inferred, it becomes fixed, and the variable cannot be reassigned to a value of a different type. This provides static type safety.Its means that using var we can't reassign other type of data such as number,bool etc.

  */

  var Name = 'ADIL';
  Name = 'bob';
  print(Name);

  /* A variable declared with dynamic can hold values of any type, and its type can change at runtime.It means that dynamic keyword change on rum time according to the given data , first is String,second is int,then double etc,it assingn according to its given data*/

  dynamic address = 'Chitral';
  address = 12345;
  address = true;
  address = 343.56;
  print(address);

  //What is the difference between final and const? Show with examples.

  //(Compile-time constant),Used for truly constant values, like mathematical constants or fixed strings
  const String title = 'Arfa kareem';
  print("The institution name is $title");

  //(Runtime constant),Used for values that are determined once during the program's execution and then remain constant, such as configuration settings or calculated values.
  final DateTime currentTime = DateTime.now();
  print("Current Time: $currentTime");

  //Store the value of pi using const.
  const double pi = 3.14;
  print("pi is : $pi");

  //Declare a num variable and assign it both an integer and a double

  num Mynumber = 250;
  print(Mynumber);
  print(Mynumber.runtimeType);

  Mynumber = 10.5;
  print(Mynumber);
  print(Mynumber.runtimeType);
}
