import 'dart:math' as math;

late String topLevelVar; // it must be instantiated

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

  assert(cup ==
      null); // In production assert is ignored. In development mode the assert throw an exception in case of errors

  // Dart can detect if the variable is non-null by the time it's passed
  // to print:

  int numberUninitialized;

  numberUninitialized = 60;

  print(numberUninitialized);

  // Late Variables

  // used when I'm sure a variable receives a value before be used.
  // It's common to use with Top-Level and Instance classes Variables.

  // The initializer only runs the first time late variables is used, because:
  // The variable might not be needed, and initializing it is costly.
  // You’re initializing an instance variable, and its initializer needs access to this.

  late User favoriteFood;

  favoriteFood = User({"street": "Rua das Orquídeas", "number": 137}, 18);

  print("Static const Class level variable: ${User.name}");

  topLevelVar = "Top Level Variable";

  print(topLevelVar);

  favoriteFood.showInformations();

  // Final and const

  // Final = Can be set only once
  // const = It's implicitly finals but is compile-time constant

  // The differences I notices, is that final allow us to use int loop-in and accepts values
  // that changes constantly even though we cannot set the value twice.

  // The const only accepts constants values and can't be used in loop-in, since each loop will increment
  // the control variable.

  var list = [1, 2, 3, 4, 5];

  for (final int n in list) {
    final int num = n;

    const int num2 = 2;

    final int num3 = num2 * num;

    print(num3);
  }

  // It's possible to define the constants values in the assignment
  var foo = const [];
  const num bar = 2;
  const baz = []; // equivalent to const []

  // foo = 10; This will not work;
  foo = [
    1,
    2,
    3,
    4
  ]; // Since the variable was assigned initially as List<dynamic> we can override the values of different types
  foo = [
    "Hi",
    "Bye"
  ]; // Inother hand if the type of the variable was List<int> this line will not work.

  const Object i = 3; // Where i is a const Object with an int value...
  const list2 = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list2 is List<int>) ...list2}; // ...and a spread.

  print(i);
  print(list2);
  print(map);
  print(set);
}

// Note: Although a final object cannot be modified, its fields can be changed.
// In comparison, a const object and its fields cannot be changed: they’re immutable.

class User {
  static const String name = "Some Random User";
  Object address;
  int age;

  User(this.address, this.age);

  void showInformations() {
    print({
      name,
      address,
      age,
    });
  }
}
