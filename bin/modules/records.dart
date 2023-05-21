void run() {
  print("\n\n==== Records ====\n");

  var record = ('first', a: 2, b: true, "last", "latest");

  (int, int) newRecord = swap((record.a, record.a * 2));

  print(newRecord);

  ({int number, String meet}) delimitedRecord;

  delimitedRecord = (number: 1, meet: "Hi");

  print(delimitedRecord.meet);
}

(int, int) swap((int a, int b) record) {
  var (a, b) = record;
  return (b, a);
}
