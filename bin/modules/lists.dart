void run() {
  print("\n\n ===== LISTS ====\n");

  List<String> names = ["Victor", "Caio", "Lincon"];

  print("Names: $names");

  // const list

  var constantList = const [1, 2, 3];

  // constantList[0] = 1; This will throw an error.

  print(constantList);

  var spreadOperator = [...names, ...?constantList];

  print("Spread Operator: $spreadOperator");

  var nav = [
    'Home',
    'Furniture',
    'Plants',
    if (true) 'Outlet'
  ]; // it will adds Outlet

  print(nav);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];

  print(listOfStrings);

  // SETS

  /// sets can only have unique elements which means there are no copies

  var halogens = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };

  print(halogens);

  var set2 = <String>{};

  set2
    ..add('fluorine')
    ..addAll(halogens);

  print(set2);

  // Maps

  /**
   * In general, a map is an object that associates keys and values. 
   * Both keys and values can be any type of object. 
   * Each key occurs only once, but you can use the same value multiple times. Dart support for 
   * maps is provided by map literals and the Map type.
   */

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  }; // will have the type Map<String, String>

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  }; // will have the tile Map<int, String>

  print(gifts["fifth"]);
  print(nobleGases[10]);

  var newMap = Map<String, dynamic>();

  newMap["victor"] = {"role": "Web Developer", "age": 18};

  newMap["Lincon"] = {"role": "Video Editor", "age": 18};

  print(newMap["victor"]["role"]); // will return "Web Developer"
}
