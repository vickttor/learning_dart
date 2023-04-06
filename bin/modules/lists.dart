void run() {
  List<String> names = ["Victor", "Caio", "Lincon"];

  // Filtering the List;
  var newList1 = names.where((element) => element.endsWith("o")).toList();

  print(newList1);
}
