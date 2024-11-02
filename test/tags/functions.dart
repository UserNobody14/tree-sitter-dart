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
  final instance = SomeClass(1, 2, 3).method();
  //               ^ @reference.class
  //                                    ^ @reference.call
  SomeClass().getter;
  instance.str;
  instance.getter;
  //        ^ @reference.call
  instance?.getter;
  //        ^ @reference.call
  instance.setter = 12;
  //        ^ @reference.call
  instance?.setter = 12;
  //        ^ @reference.call
  instance.method();
  //        ^ @reference.call
  instance?.method()!.length();
  //        ^ @reference.call
  topLevelFn(1, 2)!.length?.toString();
  //                             ^ @reference.call
  topLevelFn;
  //      ^ @reference.call
  instance.extensionMethod();
  instance!.extensionMethod();
  //          ^ @reference.call
  instance
    ..method()
    // ^ @reference.call
    ..str
    // ^ @reference.call
    ..getter;
  //   ^ @reference.call
}

