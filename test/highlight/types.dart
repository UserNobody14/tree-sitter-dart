enum Material {
  //  ^ type
  DENIM,
  // <- identifier.constant
  CANVAS
}

class Person {
  //   ^ type
  String name;

  Person(String name) {
    // <- type
    //    ^ type.builtin
    this.name = name;
    this.pants = new Pants<Pocket>();
    //                ^ type
    //                       ^ type
  }

  Person.other(this.name);
  //            ^ variable.builtin

  String getName() {
    // <- type.builtin
    //    ^ function
    return this.name;

    return Material.DENIM;
  }
}

class Collections {
  static List<T> emptyList<T>() {
    return [];
  }
}

class someClass<T> {
  List<T> someMethod() {
    List<T> list = Collections.emptyList<T>();
    return list;
  }

  void anotherMethod<S>(S arg) {
    List<S> list = Collections.emptyList<S>();
  }
}

class TestClass<A, B> {
  //           ^ punctuation.bracket
  //                ^ punctuation.bracket

  List<String> foo() {
    //^ punctuation.bracket
    //       ^ punctuation.bracket
    return <String>[];
    //     ^ punctuation.bracket
    //            ^ punctuation.bracket
  }

  Map test<A, B>() {
    //    ^ punctuation.bracket
    //         ^ punctuation.bracket
    return Map<int, String>.from(<int, String>{});
    //        ^ punctuation.bracket
    //                    ^ punctuation.bracket
    //                           ^ punctuation.bracket
    //                                       ^ punctuation.bracket
  }
}
