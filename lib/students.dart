class Students {
  List<Map<String, String>> people;

  Students(this.people);

  // sort list based on field name that is passed
  void sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  // loop through list and print each item
  void output() {
    for (var person in people) {
      print(person);
    }
  }

  // add a single Map to the List
  void plus(Map<String, String> person) {
    people.add(person);
  }

  // remove an item from the list (that contains the passed in value)
  void remove(String field) {
    people.removeWhere((person) => person.containsValue(field));
  }
}
