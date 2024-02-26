import 'package:equatable_dummy/Person.dart';

void main(List<String> args) {
  final person1 = Person(name: "Bob", age: 21);
  final person2 = Person(name: "Bob", age: 21);

  print(person1 == person2);
}
