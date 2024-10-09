import 'package:hybrid3/students.dart';
import 'dart:convert';

void main() {
  String jsonString = '''
  [
    {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
    {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
]
''';

  List<dynamic> decodedJson = json.decode(jsonString);

  List<Map<String, String>> peopleList =
      decodedJson.map((item) => Map<String, String>.from(item)).toList();

  Students students = Students(peopleList);

  print("Original List:");
  students.output();

  // Add a new person
  print("\nAdd a single student:");
  students.plus({
    "first": "Harry",
    "last": "Potter",
    "email": "potterh@algonquinlive.com"
  });
  students.output();

  // Sort by firstName
  print("\nSort by field name that is passed:");
  students.sort("last");
  students.output();

  // Remove a person
  print("\nRemove an item:");
  students.remove("Adesh");
  students.output();
}
