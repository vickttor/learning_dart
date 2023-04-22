//Typedefs is a way to refer to a type. It's also called type alias.
typedef StringList = List<String>;
typedef MyMap<T> = Map<String, T>;

// Typedefs can't be defined into methods !!

void run() {
  print("\n\n==== TYPEDEFS ====\n");

  StringList motorcycles = ["Kawasaki", "Yamaha", "Honda"];

  print(motorcycles);

  MyMap<Person> personMap = {
    "p1": Person(name: "Victor", role: "Web Developer"),
    "p2": Person(name: "Tiago", role: "BackEnd Developer")
  };

  print(personMap); // the Entire Map;

  print("First Person: ${personMap['p1']?.name}");
  print("Second Person: ${personMap['p2']?.name}");
}

class Person {
  String name;
  String role;

  Person({required this.name, required this.role});
}
