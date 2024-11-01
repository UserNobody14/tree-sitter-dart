class SomeClass {
  //  ^ @definition.class
  final str = '';
  int get getter => 12;
  //       ^ @definition.method
  void set setter(int value) {}
  //        ^ @definition.method
  void method() => print('asdf');
  //    ^ @definition.method
}

String topLevelFn() => 'str';
//      ^ @definition.function

extension SomeExtension on SomeClass {
  //       ^ @definition.extension
  void extensionMethod() => print('extension');
  //    ^ @definition.method
}

void main() {
  final instance = SomeClass();
  instance.str;
  instance.getter;
  instance.setter = 12;
  instance.method();
  topLevelFn();
  instance.extensionMethod();
  instance
    ..method()
    ..str
    ..getter;
}

