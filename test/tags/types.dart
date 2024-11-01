enum Material {
  //  ^ @definition.enum
  DENIM,
  CANVAS
}

class Person {
  //    ^ @definition.class
  String name;

  Person(String name) {
    this.name = name;
    this.pants = new Pants<Pocket>();
  }

  Person.other(this.name);

  String getName() {
    //   ^ @definition.method
    return this.name;
  }
}

class Collections {
  //    ^ @definition.class
  static List<T> emptyList<T>() {
    //             ^ @definition.method
    return [];
  }
}

class someClass<T> {
  //    ^ @definition.class
  List<T> someMethod() {
    //     ^ @definition.method
    List<T> list = Collections.emptyList<T>();
    return list;
  }

  void anotherMethod<S>(S arg) {
    //   ^ @definition.method
    List<S> list = Collections.emptyList<S>();
  }
}

class TestClass<A, B> {
// 		 ^ @definition.class

  List<String> foo() {
    //          ^ @definition.method
    return <String>[];
  }

  Map test<A, B>() {
    //  ^ @definition.method
    return Map<int, String>.from(<int, String>{});
  }
}
