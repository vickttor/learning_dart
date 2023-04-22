class Television {
  /// use [turnOn] to turn the power instead.
  @Deprecated("Use turnOn instead")
  void activate() {
    turnOn();
  }

  void turnOn() {
    print("Turning the television on");
  }
}

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}

void run() {
  print("\n\n==== METADATA ====\n");

  final Television samsungCrystal8HD = Television();

  samsungCrystal8HD.activate();

  @Todo("Dash", "Implement the function")
  final todo = Todo("AWS", "Infrastructure as a Service");

  print("${todo.who} is a ${todo.what}");
}

/**
 * 
 * In Dart, metadata is a way to attach extra information to various program elements such as 
 * classes, methods, functions, variables, and libraries. Metadata is used to add semantic meaning to program elements, 
 * and can be accessed at runtime through reflection. 
 * 
 * Metadata is represented by an @ symbol followed by the name of the metadata class or function, 
 * and can be placed immediately before the declaration of the program element it is attached to.
 * 
 * There are several built-in metadata annotations in Dart, such as @deprecated, @override, and @experimental, 
 * which can be used to add information about the usage of a program element. 
 * 
 * You can also create your own custom metadata annotations in Dart using the @ syntax followed by 
 * the name of your annotation class. Custom metadata classes can be used to add additional information 
 * to your code, or to annotate specific program elements with custom semantics that are meaningful in your application domain. 
 * 
 * For example, you might create a custom metadata annotation to add information about the author of a particular piece of code, 
 * or to indicate that a method should only be called under certain conditions. Custom metadata annotations can be useful for 
 * providing additional context to your code, and for helping other developers understand the purpose and meaning of your program elements. 
 * 
 * To create your own metadata annotation in Dart, you need to define a class with a const constructor, and annotate that constructor 
 * with the @metadata annotation.
 * 
 */


