class SomeClass {
  final str = '';
  int get getter => 12;
  void set setter(int value) {}
  void method() => print('asdf');
  //    ^ function
}

String topLevelFn() => 'str';
//      ^ function

extension SomeExtension on SomeClass {
  void extensionMethod() => print('extension');
  //    ^ function
}

void main() {
  final instance = SomeClass();
  instance.str;
  //        ^ property
  instance.getter;
  //        ^ property
  instance.setter = 12;
  //        ^ property
  instance.method();
  //        ^ function
  topLevelFn();
  // <- function
  instance.extensionMethod();
  //          ^ function
  instance
    ..method()
  //     ^ function
    ..str
  //   ^ property
    ..getter;
  //   ^ property
}