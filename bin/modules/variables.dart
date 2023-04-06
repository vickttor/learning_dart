import 'dart:math' as math;

void run() {
  // Variables

  print("\n\n ===== VARIABLES ====\n");

  String name = 'Minecraft';
  int year = 2023;
  var inferred = true;
  Object pi = math.pi;

  // Every variable extends the Type Object. That means the type Object
  // is the type of all non-null values. It's possible to set dynamic type:

  dynamic fruits = [1, 2, 3];

  fruits = {"fruits": fruits};

  // this way, by setting `dynamic` I can override the previous value
  // to one another of different type.

  // print(fruits.fruits); this will not work. To acces an property, do:

  var user = {"id": 1, "username": "Victor Silva", "position": "Web Developer"};

  print(user["username"]);

  // If the user was setted as an Object instead of `var`
  //the user["username"] would not work.

  print({
    "Nome": name,
    "Year": year,
    "Math.pi": pi,
    "Inferred": inferred,
    ...fruits // spreading operator such as in JavaScript.
  });

  // Uninitialized variabales:

  String? cup;

  print(cup); // will print null

  // Dart can detect if the variable is non-null by the time it's passed
  // to print:

  int numberUninitialized;

  numberUninitialized = 60;

  print(numberUninitialized);
}
