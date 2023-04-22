void run() {
  print("\n\n ==== OPERATIONS ==== \n");

  var x = 10;
  var y =
      x++; // it will increment the x += 1; but y will receive the initial value of x (before the increment)

  var z = ++x; //it will receive the actual value of x with the increment: 12;

  print(x);
  print(y);
  print(z);

  bool truth = true;
  bool falsy = !truth;

  print(truth);
  print(falsy);

  int n1 = 4;
  int n2 = 6;
  var bitwiseAnd = n1 & n2; // 1

  print(bitwiseAnd);

  var bitwiseXor = n1 ^ n2; // 2
  print(bitwiseXor);

  var bitwiseOr = n1 | n2; // 3
  print(bitwiseOr);

  double n3 = 10;

  bool isInt = n3 is int; // false because it's not int
  bool isNotDouble = n3 is! double; // false because it's double

  print("It's int: $isInt");
  print("It's not double: $isNotDouble");

  var a = null ?? "Ok";
  var b = 1 ?? "Ok";

  print(a); // "Ok"
  print(b); // 1

  // ~/

  final n4 = 10;
  final n5 = 15;

  // int division = n5 / n4;  This will not work because the division (/) returns a double (1.5)

  int division = n5 ~/ n4; // This will works because the ~/ returns an integer
  //even when the division should be a decimal number.

  print("\n\nDivision: $division"); // Division: 1

  // ??=

  var j = null;
  var h = 10;

  j ??= h;

  print("\n\nJ = $j"); // it will be 10 because it was null

  h ??= 20;

  print("H = $h"); // it'll keeps the 10 value because it wasn't null;

  List<String> listStr1 = ["A", "B", "C"];
  List<String> listStr2 = ["D", "E", "F"];

  List<String> letters = [...listStr1, ...listStr2]; // spread operator

  print("\n\n$letters");

  // Cascade operator
  final person = Person();

  person
    ..setDetails(name: "Victor", age: 18)
    ..printDetails();
}

class Person {
  String? name;
  int? age;

  void setDetails({required String name, required int age}) {
    this.name = name;
    this.age = age;
  }

  void printDetails() {
    print("Name $name");
    print("Age $age");
  }
}
